FROM ubuntu:18.04
VOLUME /project
WORKDIR /project

ENV PATH=/project/etcd:$PATH
ENV ETCD_FILE="etcd-v3.5.0-linux-amd64.tar.gz"
COPY ./${ETCD_FILE} /project/


RUN mkdir -p /project/etcd && tar xzvf /project/${ETCD_FILE}  -C /project/etcd --strip-components=1 && rm -f /project/${ETCD_FILE} 
    

ENTRYPOINT ["bash","-c"]