# GATEKEEPER FHIR Implementation Guide
code: gk-fhir-ig


## Test FHIR IG using Dockerfile
Build the image using `docker build -t gk-fhir-ig ./`. After the image has been built,
use `docker run -p 80:80 gk-fhir-ig` to start the web server container which provides the
static GATEKEEPER FHIR IG content under http://localhost.

