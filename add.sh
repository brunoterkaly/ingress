
curl --cacert tls.crt -i -H "Content-Type: application/json" -X POST -d '{"uid": "1", "coursenumber" : "401" , "coursetitle" : "K8s", "notes" : "An orchestrator"}' https://terkaly.com/courses/add

curl --cacert tls.crt -i -H "Content-Type: application/json" -X POST -d '{"uid": "2", "coursenumber" : "402" , "coursetitle" : "DC/OS", "notes" : "for big workloads"}' https://terkaly.com/courses/add

curl --cacert tls.crt -i -H "Content-Type: application/json" -X POST -d '{"uid": "3", "coursenumber" : "403" , "coursetitle" : "Docker Swarm", "notes" : "Easy to use"}' https://terkaly.com/courses/add
