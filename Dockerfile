# Start with the educates JVM 17 image that also includes Maven

FROM ghcr.io/vmware-tanzu-labs/educates-jdk17-environment:develop

COPY . /src

WORKDIR /src

RUN ./build.sh
