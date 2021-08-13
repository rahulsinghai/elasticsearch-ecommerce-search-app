FROM adoptopenjdk/openjdk15:alpine-slim
COPY build/libs/*.jar elasticsearch-ecommerce-search-app.jar
EXPOSE 8080
CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Dcom.sun.management.jmxremote -noverify ${JAVA_OPTS} -jar elasticsearch-ecommerce-search-app.jar
