kubernetes-multi-container-example
==========

## Note
This is fibsequence application which has following parts involved. This is a sample application created to demonstrate the multi container kubernetes. 

**Client**

Client is frontend application to display the fibsequences generated and form to generate new fib sequence for respective integer

**Server**

Server is the backend application to calculate/store/cache/pull the fibsequence

**worker**

Worker is a consumer application to calculate the fib sequence

**Redis**

Redis is used to cache the fib sequeunce and used as a message queue

**Postgres** 

Postgres is used to store the generated fib sequence

#### Kubernetes Objects
- Deployment
- ClusterIP
- Ingress 
- PersistenetVolumeClaim

#### Production Deployment

- Create Github repo
- Create travis config file
- Tie repo to Travis CI(Or Junkin, CircleCI)                                        
- Create Google Cloud Project(Or AWS, Azur)
- Add deployment scripts to the repo 

#### Local Development with Skaffold

Skaffold watch our local project directory for changes and push that change in kubernetes cluster. We have two options to do that.