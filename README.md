 + docker login -u forvaidya (PAT is there on my laptop)
 + docker build -t forvaidya/colored-flask .
 + docker push forvaidya/colored-flask

 Test command 

 docker run --rm -d --name mahesh-colored-flask -p 8080:8080 --net=host colored-flask
 (port 5000 is used somewhere on my mac) 

 kubectl delete service/colored-flask ; kubectl delete deployment/colored-flask
