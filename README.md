paas-frontend-backend-example
=============================

This is an example of a simple pair of microservices which you can deploy to GOV.UK PaaS.

The backend picks a random image from a subset of the Government Art Collection and the frontend renders a page with the image. Both the frontend and the backend are ruby applications using Sinatra.

This is a simple example for us to use in user research into running microservices on the PaaS.

Deploying the apps
------------------

To deploy the backend:

```
cd backend
cf push
```

To deploy the frontend:

```
cd frontend
cf push --no-start
cf set-env paas-frontend-backend-example-frontend BACKEND_URL https://paas-frontend-backend-example-backend.cloudapps.digital
cf start paas-frontend-backend-example-frontend
```

Changing the URL of the backend:

```
cf set-env paas-frontend-backend-example-frontend BACKEND_URL http://your-new-url
cf restart paas-frontend-backend-example-frontend
```

Using private networking
------------------------

See the documentation provided.

