FROM openjdk:17
RUN curl -s -L -O https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v0.4.11/grpc_health_probe-linux-amd64 && \
    chmod +x grpc_health_probe-linux-amd64 && \
    mv grpc_health_probe-linux-amd64 /usr/bin/grpc_health_probe
