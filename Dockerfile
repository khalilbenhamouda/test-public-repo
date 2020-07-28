FROM openjdk:14-alpine
COPY build/libs/hello-world-*-all.jar hello-world.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "hello-world.jar"]