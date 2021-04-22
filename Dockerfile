# Setup build environment
FROM alpine:latest AS prerequisites

RUN apk update && \
    apk add wget && \
    apk add openjdk8-jre && \
    apk add ruby-full && \
    apk add ruby-dev && \
    apk add build-base && \
    apk add nodejs && \
    apk add npm && \
    rm -rf /var/cache/apk/*

RUN npm install -g fsh-sushi && \
    gem install bundler jekyll

# Get FHIR IG sources and run FHIR IG Publisher
FROM prerequisites AS builder
WORKDIR /fhir-ig

COPY ./ .
RUN wget -q https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar && \
    java -jar publisher.jar -ig .

# Deploy FHIR IG as static page
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=builder /fhir-ig/output .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]