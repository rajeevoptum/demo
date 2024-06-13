FROM java:7
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javaco DemoApplication.java
CMD ["java", "Main"]
