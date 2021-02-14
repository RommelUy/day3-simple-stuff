FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
USER root
RUN mkdir /movingcompny
USER 4096
RUN cp Dockerfile /movingcompny/Dockerfile
