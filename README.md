 + docker login -u forvaidya (PAT is there on my laptop)
 + docker build -t forvaidya/colored-flask .
 + docker push forvaidya/colored-flask

 Test command 

 docker run --rm -d --name mahesh-colored-flask -p 5000:5000 --net=host colored-flask

 kubectl delete service/colored-flask ; kubectl delete deployment/colored-flask