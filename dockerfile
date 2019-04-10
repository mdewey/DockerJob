FROM microsoft/dotnet:2.2-sdk
WORKDIR /app
COPY . .
CMD dotnet DockerJob.dll