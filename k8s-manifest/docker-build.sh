
EXTRA_NAME=$1

x=$(git rev-parse HEAD)
git_sha=${x:0:6}

echo -n "${DOCKER_PAT}" | docker login -u forvaidya  --password-stdin
docker build -t forvaidya/colored-flask:latest  ../src
docker tag forvaidya/colored-flask:latest forvaidya/colored-flask:${git_sha}

if [[ $EXTRA_NAME ]]
then
    docker tag forvaidya/colored-flask:latest forvaidya/colored-flask:${EXTRA_NAME}
fi 

docker push forvaidya/colored-flask --all-tags