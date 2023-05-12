FROM openjdk:17
RUN mkdir -p /var/scripts && \
    curl -o /var/scripts/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /var/scripts/wait-for-it.sh && \
    curl -s -L -O https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v0.4.11/grpc_health_probe-linux-amd64 && \
    chmod +x grpc_health_probe-linux-amd64 && \
    mv grpc_health_probe-linux-amd64 /usr/bin/grpc_health_probe
