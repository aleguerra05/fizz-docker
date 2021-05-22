FROM centos:7
COPY buzz.sh /
ENTRYPOINT [ "./buzz.sh" ]
