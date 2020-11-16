#! /bin/bash
docker build -t aasxserver-demo .
docker stop AasxServerDemo || true && docker rm AasxServerDemo || true
#docker exec -it  AasxServer aasxserver-img /bin/bash
docker run -it -p 51210:51210 -p 51310:51310 --name AasxServerDemo aasxserver-demo
