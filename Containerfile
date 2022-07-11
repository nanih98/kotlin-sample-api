FROM gcr.io/distroless/java17-debian11
COPY build/libs/kotlin-sample-api-0.0.1-all.jar /app/sample-api.jar
WORKDIR /app
EXPOSE 8080
CMD ["sample-api.jar"]
