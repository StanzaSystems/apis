#!/bin/bash

apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    apt-utils dialog protobuf-compiler

go install github.com/bufbuild/buf/cmd/buf@latest
go install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@latest
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
go install github.com/grpc-ecosystem/grpc-health-probe@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
go install github.com/go-swagger/go-swagger/cmd/swagger@latest

chown -R vscode: /go