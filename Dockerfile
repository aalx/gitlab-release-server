FROM java:8
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ADD wait-for-it.sh /wait-for-it.sh
RUN sh -c 'touch /app.jar'
RUN bash -c 'chmod 777 /wait-for-it.sh'
CMD exec java -Djava.security.egd=file:/dev/./urandom -jar /app.jar