'''bash
docker run --rm -it -v ${PWD}:/scripts centos:7 ./scripts/buzz.sh
'''

OR

'''bash
docker build -t buzz:1.0 .
docker run -it buzz:1.0
'''