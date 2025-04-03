FROM alpine:latest as main-linux-amd64
ARG PB_VERSION=0.17.7

RUN apk --no-cache add curl
RUN adduser -s /bin/bash -D pocketbase

USER pocketbase

# Set working directory to /home/pocketbase
WORKDIR /home/pocketbase

# Download and unzip PocketBase
RUN curl -LJ "https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip" -o pb.zip
RUN unzip pb
RUN rm pb.zip

# Create necessary directories for PocketBase
RUN mkdir pb_migrations pb_hooks pb_data

# Expose PocketBase API port
EXPOSE 8090

# Copy the entrypoint script and set it as executable
COPY --chown=pocketbase --chmod=700 ./entrypoint.sh .

# Define the entrypoint
ENTRYPOINT [ "./entrypoint.sh" ]
