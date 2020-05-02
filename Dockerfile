FROM debian:buster-slim AS builder
RUN apt-get update && apt-get install -y curl unzip
RUN curl -L -o packer.zip https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip && unzip packer.zip && rm packer.zip

FROM raphaeldegail/ansible:2.9.1
COPY --from=0 packer /usr/bin
CMD ["packer", "version"]