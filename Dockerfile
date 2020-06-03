#基于哪个镜像
FROM java:8
#将本地文件夹挂载到当前容器
VOLUME ./tmp
ADD target/spring-boot-eureka-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8761
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./random", "-jar", "/app.jar"]
