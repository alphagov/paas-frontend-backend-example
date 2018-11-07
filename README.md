paas-frontend-backend-example
=============================

This is an example of a simple pair of microservices which you can deploy to GOV.UK PaaS.

The backend picks a random image from a subset of the Government Art Collection and the frontend renders a page with the image. Both the frontend and the backend are ruby applications using Sinatra.

The frontend app reads the URL of the backend app from an environment variable called `BACKEND_URL`.

This is a simple example for us to use in user research into running microservices on the PaaS.

Deploying the apps
------------------

See https://paas-tech-docs-user-research.cloudapps.digital/deploying_apps.html#deploying-apps
