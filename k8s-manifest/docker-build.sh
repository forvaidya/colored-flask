git commit -am "build commit" 
git push origin
x=$(git rev-parse HEAD)
git_sha=${x:0:6}

docker login -u forvaidya
docker build -t forvaidya/colored-flask:latest  .
docker tag forvaidya/colored-flask:latest forvaidya/colored-flask:${git_sha}
docker push forvaidya/colored-flask --all-tags