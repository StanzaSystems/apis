# Stanza Public APIs

This repository contains the Stanza protocol specification and the corresponding Language Independent Interface Types (.proto files) as well as our REST APIs (*.json files). It is recommended to generate
and use language specific gRPC clients whenever possible.

## Generate gRPC Client Libraries

Create a _local_ `buf.gen.yaml` file in the target repository and generate appropriate language
specific client libraries into that repo with:

```bash
buf generate https://github.com/StanzaSystems/apis.git
```

Example `buf.gen.yaml` (for golang):

```yaml
version: v1
managed:
  enabled: true
  go_package_prefix:
    default: gen
    except:
      - buf.build/googleapis/googleapis
      - buf.build/grpc-ecosystem/grpc-gateway
plugins:
  - plugin: buf.build/protocolbuffers/go
    out: gen
    opt: paths=source_relative
  - plugin: buf.build/grpc/go
    out: gen
    opt: paths=source_relative,require_unimplemented_servers=false
```

Please see [Generating Code with Buf](https://buf.build/docs/generate/overview/) documentation for more on `buf.gen.yaml`.
