FROM java:8
ENV LANG C.UTF-8
VOLUME /var/log/payment
ADD config/demo-0.0.1-SNAPSHOT.jar demo.jar
RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]
