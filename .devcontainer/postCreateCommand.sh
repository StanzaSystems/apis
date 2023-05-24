#!/bin/bash

sudo apt-get update
DEBIAN_FRONTEND=noninteractive \
    sudo apt-get -y install --no-install-recommends \
    apt-utils dialog protobuf-compiler

go install github.com/bufbuild/buf/cmd/buf@latest
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
