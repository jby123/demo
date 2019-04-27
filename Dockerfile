FROM java:8
ADD config/demo-0.0.2-SNAPSHOT.jar demo.jar
RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]
