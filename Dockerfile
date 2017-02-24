FROM java:8
MAINTAINER altfatterz@gmail.com
VOLUME /tmp
ADD /target/gs-actuator-service-0.1.0.jar gs-actuator-service-0.1.0.jar
EXPOSE 8080
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","gs-actuator-service-0.1.0.jar"]