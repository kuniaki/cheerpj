FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
#RUN ls /usr/bin/nodejs
#RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g http-server

ADD EOSL_Before_Index.html /usr/apps/hello-docker/EOSL_Before_Index.html
ADD EOSL_After_Index.html /usr/apps/hello-docker/EOSL_After_Index.html
ADD EOSL_After_Fix_Index.html /usr/apps/hello-docker/EOSL_After_Fix_Index.html
ADD Hello.class /usr/apps/hello-docker/Hello.class
ADD Hello.jar /usr/apps/hello-docker/Hello.jar
ADD cheerpj_3_20250326 /usr/apps/hello-docker/cheerpj_3_20250326
WORKDIR /usr/apps/hello-docker/

CMD ["http-server", "-s"]
