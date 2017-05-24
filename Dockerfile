FROM ekellener/manifest-tool


# ./manifest-tool --username ekellener --password dRFk7R4lfd push  from-spec manifest-test.yml 
RUN  cd $GOPATH/src && \
mkdir -p github.com/estesp && \
cd github.com/estesp 

RUN  git clone https://github.com/estesp/manifest-tool .
RUN  make binary
COPY manifest-btsync-docker.yml manifest-test.yml

RUN apt-get update && apt-get install vim -y

