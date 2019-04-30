FROM daocloud.io/library/java:openjdk-8-jre-alpine
ADD config/demo-0.0.2-SNAPSHOT.jar /application/demo.jar
#RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/application/demo.jar"]