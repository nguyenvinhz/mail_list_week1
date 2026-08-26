# ===== Stage 1: Build =====
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml truoc de cache dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code va build
COPY src ./src
RUN mvn clean package -DskipTests

# ===== Stage 2: Runtime =====
FROM tomcat:10.1-jdk17-temurin

# Xoa ung dung mac dinh cua Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR da build vao thu muc webapps voi ten ROOT.war
# de app chay o duong dan goc "/"
COPY --from=build /app/target/mail_list_week1.war /usr/local/tomcat/webapps/ROOT.war

# Render su dung PORT env variable
ENV PORT=8080
EXPOSE 8080

# Chay Tomcat
CMD ["catalina.sh", "run"]
