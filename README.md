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
"# kubernetes-multi-container-example" 
