FROM arm64v8/docker:dind

RUN apt-get update && apt-get upgrade -y && apt-get install -y git curl openjdk-8-jdk && rm -rf /var/lib/apt/lists/*