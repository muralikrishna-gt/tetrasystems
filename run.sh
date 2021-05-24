sudo docker build -t tertasystems-static:version-1.1 -f Dockerfile .

sudo docker ps -f name=docker-tertasystems-static -q | xargs --no-run-if-empty docker container stop

sudo docker container ls -a -fname=docker-tertasystems-static -q | xargs -r docker container rm

sudo docker run --expose=2021 -p 2021:80 -d --name docker-tertasystems-static tertasystems-static:version-1.1
