FROM openjdk:21

# ARG
#ARG JAR_FILE=*.jar
ARG JAR_FILE=SeniorFullStack1.jar

# ADD
ADD ${JAR_FILE} blog.jar

# ENTRYPOINT
ENTRYPOINT ["java", "-jar","/blog.jar"]
