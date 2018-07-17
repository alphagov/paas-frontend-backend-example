paas-frontend-backend-example
=============================

This is a super-simple examlpe of an app with a frontend (which should be
accessible on the internet) and a backend (which should not be) running on The
Government PaaS.

Getting Started
---------------

* Make sure that your cloud foundry deployment is using bosh-dns, has service
  discovery set up, and has local_dns enabled, and  that the `apps.internal`
  domain has been created.
* `cd backend && cf push`
* `cd frontend && cf push`
* `cf add-network-policy frontend --destination-app backend`
* `curl https://frontend.$your-env.dev.cloudpipelineapps.digital/`


