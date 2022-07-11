# Sample API with Kotlin & Ktor

Simple project in Kotlin that I have used to test java in [distroless](https://github.com/GoogleContainerTools/distroless)

# Compilation

```sh
./glradlew shadowJar
```
# Build image

```sh
docker build -f Containerfile -t test/test:latest . 
```
# Run the app with JVM_TOOL_OPTIONS

```sh
docker run -itd -m 1G -E JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=80 -XX:InitialRAMPercentage=50" #-XX:+PrintFlagsFinal--name API test/test:test
```