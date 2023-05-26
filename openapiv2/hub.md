


# Stanza Hub API
  

## Informations

### Version

1.0

## Tags

  ### <span id="tag-auth-service"></span>AuthService

  ### <span id="tag-config-service"></span>ConfigService

  ### <span id="tag-health-service"></span>HealthService

  ### <span id="tag-quota-service"></span>QuotaService

## Content negotiation

### URI Schemes
  * https

### Consumes
  * application/json

### Produces
  * application/json

## Access control

### Security Schemes

#### ApiKeyAuth (header: X-Stanza-Key)



> **Type**: apikey

### Security Requirements
  * ApiKeyAuth

## All endpoints

###  auth_service

| Method  | URI     | Name   | Summary |
|---------|---------|--------|---------|
| POST | /v1/auth/token | [auth service get bearer token](#auth-service-get-bearer-token) | Consume an API key and return a Bearer Token. |
  


###  config_service

| Method  | URI     | Name   | Summary |
|---------|---------|--------|---------|
| GET | /v1/context/browser | [config service get browser context](#config-service-get-browser-context) | Get browser context |
| GET | /v1/config/decorator | [config service get decorator config](#config-service-get-decorator-config) | Get decorator config |
| GET | /v1/config/service | [config service get service config](#config-service-get-service-config) | Get service config |
  


###  health_service

| Method  | URI     | Name   | Summary |
|---------|---------|--------|---------|
| GET | /v1/health/decorator | [health service query decorator health](#health-service-query-decorator-health) | Get decorator health information. |
  


###  quota_service

| Method  | URI     | Name   | Summary |
|---------|---------|--------|---------|
| POST | /v1/quota/token | [quota service get token](#quota-service-get-token) | Get an access token |
| POST | /v1/quota/lease | [quota service get token lease](#quota-service-get-token-lease) | Get one or more access token leases |
| POST | /v1/quota/consumed | [quota service set token lease consumed](#quota-service-set-token-lease-consumed) | Inform stanza that quota tokens were consumed |
| POST | /v1/quota/validatetokens | [quota service validate token](#quota-service-validate-token) | Validate one or more tokens |
  


## Paths

### <span id="auth-service-get-bearer-token"></span> Consume an API key and return a Bearer Token. (*AuthService_GetBearerToken*)

```
POST /v1/auth/token
```

Takes an API key as and argument and returns a Bearer Token if valid.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| body | `body` | [V1GetBearerTokenRequest](#v1-get-bearer-token-request) | `models.V1GetBearerTokenRequest` | | ✓ | |  |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#auth-service-get-bearer-token-200) | OK | OK |  | [schema](#auth-service-get-bearer-token-200-schema) |
| [429](#auth-service-get-bearer-token-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#auth-service-get-bearer-token-429-schema) |
| [default](#auth-service-get-bearer-token-default) | | An unexpected error response. |  | [schema](#auth-service-get-bearer-token-default-schema) |

#### Responses


##### <span id="auth-service-get-bearer-token-200"></span> 200 - OK
Status: OK

###### <span id="auth-service-get-bearer-token-200-schema"></span> Schema
   
  

[V1GetBearerTokenResponse](#v1-get-bearer-token-response)

##### <span id="auth-service-get-bearer-token-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="auth-service-get-bearer-token-429-schema"></span> Schema
   
  

any

##### <span id="auth-service-get-bearer-token-default"></span> Default Response
An unexpected error response.

###### <span id="auth-service-get-bearer-token-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="config-service-get-browser-context"></span> Get browser context (*ConfigService_GetBrowserContext*)

```
GET /v1/context/browser
```

Get browser context from Stanza Hub.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| feature.environment | `query` | string | `string` |  | ✓ |  |  |
| feature.names | `query` | []string | `[]string` | `multi` |  |  |  |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#config-service-get-browser-context-200) | OK | OK | ✓ | [schema](#config-service-get-browser-context-200-schema) |
| [304](#config-service-get-browser-context-304) | Not Modified | OK, Not Modified. | ✓ | [schema](#config-service-get-browser-context-304-schema) |
| [429](#config-service-get-browser-context-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#config-service-get-browser-context-429-schema) |
| [default](#config-service-get-browser-context-default) | | An unexpected error response. |  | [schema](#config-service-get-browser-context-default-schema) |

#### Responses


##### <span id="config-service-get-browser-context-200"></span> 200 - OK
Status: OK

###### <span id="config-service-get-browser-context-200-schema"></span> Schema
   
  

[V1GetBrowserContextResponse](#v1-get-browser-context-response)

###### Response headers

| Name | Type | Go type | Separator | Default | Description |
|------|------|---------|-----------|---------|-------------|
| Etag | string | `string` |  |  | Unique entity identifier for this specific resource version. |

##### <span id="config-service-get-browser-context-304"></span> 304 - OK, Not Modified.
Status: Not Modified

###### <span id="config-service-get-browser-context-304-schema"></span> Schema
   
  

any

###### Response headers

| Name | Type | Go type | Separator | Default | Description |
|------|------|---------|-----------|---------|-------------|
| Etag | string | `string` |  |  | Unique entity identifier for this specific resource version. |

##### <span id="config-service-get-browser-context-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="config-service-get-browser-context-429-schema"></span> Schema
   
  

any

##### <span id="config-service-get-browser-context-default"></span> Default Response
An unexpected error response.

###### <span id="config-service-get-browser-context-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="config-service-get-decorator-config"></span> Get decorator config (*ConfigService_GetDecoratorConfig*)

```
GET /v1/config/decorator
```

Get decorator config from Stanza Hub.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| s.decoratorName | `query` | string | `string` |  | ✓ |  |  |
| s.environment | `query` | string | `string` |  | ✓ |  |  |
| s.serviceName | `query` | string | `string` |  | ✓ |  |  |
| s.serviceRelease | `query` | string | `string` |  | ✓ |  |  |
| versionSeen | `query` | string | `string` |  |  |  | Set if the client has seen a previous version of the config. Server will send data only if newer config available. |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#config-service-get-decorator-config-200) | OK | OK |  | [schema](#config-service-get-decorator-config-200-schema) |
| [429](#config-service-get-decorator-config-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#config-service-get-decorator-config-429-schema) |
| [default](#config-service-get-decorator-config-default) | | An unexpected error response. |  | [schema](#config-service-get-decorator-config-default-schema) |

#### Responses


##### <span id="config-service-get-decorator-config-200"></span> 200 - OK
Status: OK

###### <span id="config-service-get-decorator-config-200-schema"></span> Schema
   
  

[V1GetDecoratorConfigResponse](#v1-get-decorator-config-response)

##### <span id="config-service-get-decorator-config-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="config-service-get-decorator-config-429-schema"></span> Schema
   
  

any

##### <span id="config-service-get-decorator-config-default"></span> Default Response
An unexpected error response.

###### <span id="config-service-get-decorator-config-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="config-service-get-service-config"></span> Get service config (*ConfigService_GetServiceConfig*)

```
GET /v1/config/service
```

Get service config from Stanza Hub.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| service.environment | `query` | string | `string` |  | ✓ |  |  |
| service.name | `query` | string | `string` |  | ✓ |  |  |
| service.release | `query` | string | `string` |  |  |  |  |
| versionSeen | `query` | string | `string` |  |  |  | Set if the client has seen a previous version of the config. Server will send data only if newer config available. |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#config-service-get-service-config-200) | OK | OK |  | [schema](#config-service-get-service-config-200-schema) |
| [429](#config-service-get-service-config-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#config-service-get-service-config-429-schema) |
| [default](#config-service-get-service-config-default) | | An unexpected error response. |  | [schema](#config-service-get-service-config-default-schema) |

#### Responses


##### <span id="config-service-get-service-config-200"></span> 200 - OK
Status: OK

###### <span id="config-service-get-service-config-200-schema"></span> Schema
   
  

[V1GetServiceConfigResponse](#v1-get-service-config-response)

##### <span id="config-service-get-service-config-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="config-service-get-service-config-429-schema"></span> Schema
   
  

any

##### <span id="config-service-get-service-config-default"></span> Default Response
An unexpected error response.

###### <span id="config-service-get-service-config-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="health-service-query-decorator-health"></span> Get decorator health information. (*HealthService_QueryDecoratorHealth*)

```
GET /v1/health/decorator
```

Used by SDK to allow developers to make decisions about graceful degradation of backend services.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| priorityBoost | `query` | int32 (formatted integer) | `int32` |  |  |  | Used to boost priority - SDK can increase or decrease priority of request, relative to normal feature priority. For instance, a customer may wish to boost the priority of paid user traffic over free tier. Priority boosts may also be negative - for example, one might deprioritise bot traffic. |
| s.decoratorName | `query` | string | `string` |  | ✓ |  |  |
| s.environment | `query` | string | `string` |  | ✓ |  |  |
| s.featureName | `query` | string | `string` |  |  |  |  |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#health-service-query-decorator-health-200) | OK | OK |  | [schema](#health-service-query-decorator-health-200-schema) |
| [429](#health-service-query-decorator-health-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#health-service-query-decorator-health-429-schema) |
| [default](#health-service-query-decorator-health-default) | | An unexpected error response. |  | [schema](#health-service-query-decorator-health-default-schema) |

#### Responses


##### <span id="health-service-query-decorator-health-200"></span> 200 - OK
Status: OK

###### <span id="health-service-query-decorator-health-200-schema"></span> Schema
   
  

[V1QueryDecoratorHealthResponse](#v1-query-decorator-health-response)

##### <span id="health-service-query-decorator-health-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="health-service-query-decorator-health-429-schema"></span> Schema
   
  

any

##### <span id="health-service-query-decorator-health-default"></span> Default Response
An unexpected error response.

###### <span id="health-service-query-decorator-health-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="quota-service-get-token"></span> Get an access token (*QuotaService_GetToken*)

```
POST /v1/quota/token
```

Get a token from Stanza Hub for access to given Decorator (optional Feature name for priority).

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| clientId | `query` | string | `string` |  |  |  | Used for tracking per-client token usage, allowing automatic determination of efficient batch leases. ID should be assigned by Stanza clients and be unique per-customer. Host or instance names may be used, or a UUID. |
| priorityBoost | `query` | int32 (formatted integer) | `int32` |  |  |  | Used to increase or decrease priority of request, relative to normal feature priority. |
| s.decoratorName | `query` | string | `string` |  | ✓ |  |  |
| s.environment | `query` | string | `string` |  | ✓ |  |  |
| s.featureName | `query` | string | `string` |  |  |  |  |
| weight | `query` | float (formatted number) | `float32` |  |  |  | Used for request weighting, i.e. accounting for varying request sizes and costs. If not specified then a default value of 1 is used. In cases where weights/costs are not known upfront, users can send an initial estimate as the weight, and then later, when the exact cost is known, send an updated weight via the SetTokenLeaseConsumed rpc.

weight is optional; if not used then it is assumed that all requests have weight of 1. |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#quota-service-get-token-200) | OK | OK |  | [schema](#quota-service-get-token-200-schema) |
| [429](#quota-service-get-token-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#quota-service-get-token-429-schema) |
| [default](#quota-service-get-token-default) | | An unexpected error response. |  | [schema](#quota-service-get-token-default-schema) |

#### Responses


##### <span id="quota-service-get-token-200"></span> 200 - OK
Status: OK

###### <span id="quota-service-get-token-200-schema"></span> Schema
   
  

[V1GetTokenResponse](#v1-get-token-response)

##### <span id="quota-service-get-token-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="quota-service-get-token-429-schema"></span> Schema
   
  

any

##### <span id="quota-service-get-token-default"></span> Default Response
An unexpected error response.

###### <span id="quota-service-get-token-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="quota-service-get-token-lease"></span> Get one or more access token leases (*QuotaService_GetTokenLease*)

```
POST /v1/quota/lease
```

Get a set of token leases from Stanza Hub for access to given Decorator (optional Feature name for priority).

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| clientId | `query` | string | `string` |  |  |  | Used for tracking per-client token usage, allowing automatic determination of efficient batch leases. ID should be assigned by Stanza clients and be unique per-customer. Host or instance names may be used, or a UUID. |
| defaultWeight | `query` | float (formatted number) | `float32` |  |  |  | Used for request weighting, i.e. accounting for varying request sizes and costs. The value set here is the default request weight which should be assumed for leases. If not specified, then the median weight is used when granted leases. Actual weights should be set via the SetTokenLeaseConsumed rpc.

default_weight is optional; if not used then it is assumed that all requests have weight of 1. |
| priorityBoost | `query` | int32 (formatted integer) | `int32` |  |  |  | Used to boost priority - SDK can increase or decrease priority of request, relative to normal feature priority. For instance, a customer may wish to boost the priority of paid user traffic over free tier. Priority boosts may also be negative - for example, one might deprioritise bot traffic. |
| s.decoratorName | `query` | string | `string` |  | ✓ |  |  |
| s.environment | `query` | string | `string` |  | ✓ |  |  |
| s.featureName | `query` | string | `string` |  |  |  |  |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#quota-service-get-token-lease-200) | OK | OK |  | [schema](#quota-service-get-token-lease-200-schema) |
| [429](#quota-service-get-token-lease-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#quota-service-get-token-lease-429-schema) |
| [default](#quota-service-get-token-lease-default) | | An unexpected error response. |  | [schema](#quota-service-get-token-lease-default-schema) |

#### Responses


##### <span id="quota-service-get-token-lease-200"></span> 200 - OK
Status: OK

###### <span id="quota-service-get-token-lease-200-schema"></span> Schema
   
  

[V1GetTokenLeaseResponse](#v1-get-token-lease-response)

##### <span id="quota-service-get-token-lease-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="quota-service-get-token-lease-429-schema"></span> Schema
   
  

any

##### <span id="quota-service-get-token-lease-default"></span> Default Response
An unexpected error response.

###### <span id="quota-service-get-token-lease-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="quota-service-set-token-lease-consumed"></span> Inform stanza that quota tokens were consumed (*QuotaService_SetTokenLeaseConsumed*)

```
POST /v1/quota/consumed
```

Inform stanza that one or more quota tokens were consumed.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| tokens | `query` | []string | `[]string` | `multi` | ✓ |  |  |
| weightCorrection | `query` | float (formatted number) | `float32` |  |  |  | Used for request weighting, i.e. accounting for varying request sizes and costs. If weights are not known before request execution, then a default or estimated weight may be used, followed by a corrected value here. If a value is sent here, it should be the actual request weight. |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#quota-service-set-token-lease-consumed-200) | OK | OK |  | [schema](#quota-service-set-token-lease-consumed-200-schema) |
| [429](#quota-service-set-token-lease-consumed-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#quota-service-set-token-lease-consumed-429-schema) |
| [default](#quota-service-set-token-lease-consumed-default) | | An unexpected error response. |  | [schema](#quota-service-set-token-lease-consumed-default-schema) |

#### Responses


##### <span id="quota-service-set-token-lease-consumed-200"></span> 200 - OK
Status: OK

###### <span id="quota-service-set-token-lease-consumed-200-schema"></span> Schema
   
  

[V1SetTokenLeaseConsumedResponse](#v1-set-token-lease-consumed-response)

##### <span id="quota-service-set-token-lease-consumed-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="quota-service-set-token-lease-consumed-429-schema"></span> Schema
   
  

any

##### <span id="quota-service-set-token-lease-consumed-default"></span> Default Response
An unexpected error response.

###### <span id="quota-service-set-token-lease-consumed-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

### <span id="quota-service-validate-token"></span> Validate one or more tokens (*QuotaService_ValidateToken*)

```
POST /v1/quota/validatetokens
```

Validate one or more tokens.

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| tokens | `body` | [][V1TokenInfo](#v1-token-info) | `[]*models.V1TokenInfo` | | ✓ | |  |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#quota-service-validate-token-200) | OK | OK |  | [schema](#quota-service-validate-token-200-schema) |
| [429](#quota-service-validate-token-429) | Too Many Requests | Unable to service request, try again after Retry-After. |  | [schema](#quota-service-validate-token-429-schema) |
| [default](#quota-service-validate-token-default) | | An unexpected error response. |  | [schema](#quota-service-validate-token-default-schema) |

#### Responses


##### <span id="quota-service-validate-token-200"></span> 200 - OK
Status: OK

###### <span id="quota-service-validate-token-200-schema"></span> Schema
   
  

[V1ValidateTokenResponse](#v1-validate-token-response)

##### <span id="quota-service-validate-token-429"></span> 429 - Unable to service request, try again after Retry-After.
Status: Too Many Requests

###### <span id="quota-service-validate-token-429-schema"></span> Schema
   
  

any

##### <span id="quota-service-validate-token-default"></span> Default Response
An unexpected error response.

###### <span id="quota-service-validate-token-default-schema"></span> Schema

  

[RPCStatus](#rpc-status)

## Models

### <span id="hubv1-tag"></span> hubv1Tag


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| key | string| `string` |  | |  |  |
| value | string| `string` |  | |  |  |



### <span id="protobuf-any"></span> protobufAny


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| @type | string| `string` |  | |  |  |



### <span id="rpc-status"></span> rpcStatus


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| code | int32 (formatted integer)| `int32` |  | |  |  |
| details | [][ProtobufAny](#protobuf-any)| `[]*ProtobufAny` |  | |  |  |
| message | string| `string` |  | |  |  |



### <span id="v1-browser-config"></span> v1BrowserConfig


> BrowserConfig describes the current configuration for one Feature.
Instead of being simply enabled or disabled, features are enabled for a
particular percentage of clients (0% is entirely disabled, 100% is entirely enabled).
Clients are required to self-select a percentile value from 1 to 100 in a way that is random
and trusted to consider a Feature disabled if it is disabled for the selected percentile.
action_code_disabled describes what the Browser is expected to do if the Feature is not enabled for
their assigned percentile.
message_disabled may be displayed as a fallback action.
action_code_enabled describes what the Browser is expected to do if the Feature is enabled for
their assigned percentile. This enabled degraded modes. Can be empty.
message_enabled may be displayed while in degraded mode. Can be empty.
Likely additional fields will be added here as the Browser SDK behavior set becomes more complex.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| actionCodeDisabled | int64 (formatted integer)| `int64` |  | |  |  |
| actionCodeEnabled | int64 (formatted integer)| `int64` |  | |  |  |
| enabledPercent | int64 (formatted integer)| `int64` |  | |  |  |
| messageDisabled | string| `string` |  | |  |  |
| messageEnabled | string| `string` |  | |  |  |



### <span id="v1-decorator-config"></span> v1DecoratorConfig


> DecoratorConfig represents a configuration for a given Stanza SDK instrumented Decorator, which may be used by multiple services!
If trace_config is empty, no per-decorator trace configuration is applied. Service-level trace configuration will be used (if applicable).
If check_quota is false, then no ratelimiting will be performed. All quota requests will succeed and the SDK may short-circuit quota requests, i.e. not call Hub for quota.
At a later point (post V0), there will be additional per-decorator configuration, such as deadline overrides, adaptive circuitbreaking configs, etc.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| checkQuota | boolean| `bool` |  | | Boolean representing whether quota checks are enabled. |  |
| metricConfig | [V1MetricConfig](#v1-metric-config)| `V1MetricConfig` |  | |  |  |
| quotaTags | []string| `[]string` |  | | The set of tags which are used for quota management. For example, a 'customer_id' tag might be used to implement per-customer quota limits. Only the tags listed here should be included in GetToken and GetTokenLease requests. |  |
| traceConfig | [V1TraceConfig](#v1-trace-config)| `V1TraceConfig` |  | |  |  |
| validateIngressTokens | boolean| `bool` |  | | Boolean representing wether to validate contents of the X-Stanza-Token header. |  |



### <span id="v1-decorator-feature-selector"></span> v1DecoratorFeatureSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| decoratorName | string| `string` | ✓ | |  |  |
| environment | string| `string` | ✓ | |  |  |
| featureName | string| `string` |  | |  |  |
| tags | [][Hubv1Tag](#hubv1-tag)| `[]*Hubv1Tag` |  | |  |  |



### <span id="v1-decorator-selector"></span> v1DecoratorSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| environment | string| `string` | ✓ | |  |  |
| name | string| `string` | ✓ | |  |  |
| tags | [][Hubv1Tag](#hubv1-tag)| `[]*Hubv1Tag` |  | |  |  |



### <span id="v1-decorator-service-selector"></span> v1DecoratorServiceSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| decoratorName | string| `string` | ✓ | |  |  |
| environment | string| `string` | ✓ | |  |  |
| serviceName | string| `string` | ✓ | |  |  |
| serviceRelease | string| `string` | ✓ | |  |  |
| tags | [][Hubv1Tag](#hubv1-tag)| `[]*Hubv1Tag` |  | |  |  |



### <span id="v1-feature-config"></span> v1FeatureConfig


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| config | [V1BrowserConfig](#v1-browser-config)| `V1BrowserConfig` |  | |  |  |
| name | string| `string` |  | |  |  |



### <span id="v1-feature-selector"></span> v1FeatureSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| environment | string| `string` | ✓ | |  |  |
| names | []string| `[]string` |  | |  |  |
| tags | [][Hubv1Tag](#hubv1-tag)| `[]*Hubv1Tag` |  | |  |  |



### <span id="v1-get-bearer-token-request"></span> v1GetBearerTokenRequest


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| apiKey | string| `string` | ✓ | |  |  |



### <span id="v1-get-bearer-token-response"></span> v1GetBearerTokenResponse


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| bearerToken | string| `string` |  | |  |  |



### <span id="v1-get-browser-context-response"></span> v1GetBrowserContextResponse


> GetBrowserConfigResponse is the response from Hub to Browser SDKs. It is designed to be cacheable for short periods. It is also designed to be shareable between multiple clients (e.g. in case of SSR or use of CDN etc).

Returns etag header.

May return 304 Not Modified with etag header and empty payload.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| featureConfigs | [][V1FeatureConfig](#v1-feature-config)| `[]*V1FeatureConfig` |  | |  |  |



### <span id="v1-get-decorator-config-response"></span> v1GetDecoratorConfigResponse


> GetDecoratorConfigResponse is the response from Hub to Backend SDKs.
Note that `config_data_sent` will be false and `config` will be empty if we did not have a newer config
version than `version_seen`.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| config | [V1DecoratorConfig](#v1-decorator-config)| `V1DecoratorConfig` |  | |  |  |
| configDataSent | boolean| `bool` |  | |  |  |
| version | string| `string` |  | |  |  |



### <span id="v1-get-service-config-response"></span> v1GetServiceConfigResponse


> GetServiceConfigResponse is the response from Hub to Backend SDKs. Note that `config_data_sent` will be false and `config` will be empty if we did not have a newer config version than `version_seen`.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| config | [V1ServiceConfig](#v1-service-config)| `V1ServiceConfig` |  | |  |  |
| configDataSent | boolean| `bool` |  | |  |  |
| version | string| `string` |  | |  |  |



### <span id="v1-get-token-lease-response"></span> v1GetTokenLeaseResponse


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| leases | [][V1TokenLease](#v1-token-lease)| `[]*V1TokenLease` |  | |  |  |



### <span id="v1-get-token-response"></span> v1GetTokenResponse


> Specifies whether token granted.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| granted | boolean| `bool` |  | |  |  |
| token | string| `string` |  | |  |  |



### <span id="v1-header-trace-config"></span> v1HeaderTraceConfig


> Specifies which headers should be sampled - required by OTel spec.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| requestHeaderNames | []string| `[]string` |  | |  |  |
| responseHeaderNames | []string| `[]string` |  | |  |  |
| spanSelectors | [][V1SpanSelector](#v1-span-selector)| `[]*V1SpanSelector` |  | |  |  |



### <span id="v1-health"></span> v1Health


  

| Name | Type | Go type | Default | Description | Example |
|------|------|---------| ------- |-------------|---------|
| v1Health | string| string | |  |  |



### <span id="v1-metric-config"></span> v1MetricConfig


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| collectorKey | string| `string` |  | |  |  |
| collectorUrl | string| `string` |  | |  |  |
| collectorUrlHttp | string| `string` |  | |  |  |



### <span id="v1-param-trace-config"></span> v1ParamTraceConfig


> Specifies which request parameters should be sampled.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| parameterNames | []string| `[]string` |  | |  |  |
| spanSelectors | [][V1SpanSelector](#v1-span-selector)| `[]*V1SpanSelector` |  | |  |  |



### <span id="v1-query-decorator-health-response"></span> v1QueryDecoratorHealthResponse


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| health | [V1Health](#v1-health)| `V1Health` |  | |  |  |



### <span id="v1-sentinel-config"></span> v1SentinelConfig


> SentinelConfig represents Sentinel compliant JSON configuration for the given Sentinel types. These rules are "per service" (not per Decorator) with Decorator specific routing encoded in the given JSON blobs (as Sentinel "Resources").
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| circuitbreakerRulesJson | string| `string` |  | |  |  |
| flowRulesJson | string| `string` |  | |  |  |
| isolationRulesJson | string| `string` |  | |  |  |
| systemRulesJson | string| `string` |  | |  |  |



### <span id="v1-service-config"></span> v1ServiceConfig


> ServiceConfig represents a configuration for a given Stanza SDK instrumented service.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| metricConfig | [V1MetricConfig](#v1-metric-config)| `V1MetricConfig` |  | |  |  |
| sentinelConfig | [V1SentinelConfig](#v1-sentinel-config)| `V1SentinelConfig` |  | |  |  |
| traceConfig | [V1TraceConfig](#v1-trace-config)| `V1TraceConfig` |  | |  |  |



### <span id="v1-service-selector"></span> v1ServiceSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| environment | string| `string` | ✓ | |  |  |
| name | string| `string` | ✓ | |  |  |
| release | string| `string` |  | |  |  |
| tags | [][Hubv1Tag](#hubv1-tag)| `[]*Hubv1Tag` |  | |  |  |



### <span id="v1-set-token-lease-consumed-response"></span> v1SetTokenLeaseConsumedResponse


  

[interface{}](#interface)

### <span id="v1-span-selector"></span> v1SpanSelector


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| otelAttribute | string| `string` |  | |  |  |
| value | string| `string` |  | | Selector matches if value of 'otel_attribute' equals 'value'. |  |



### <span id="v1-token-info"></span> v1TokenInfo


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| decorator | [V1DecoratorSelector](#v1-decorator-selector)| `V1DecoratorSelector` |  | |  |  |
| token | string| `string` | ✓ | |  |  |



### <span id="v1-token-lease"></span> v1TokenLease


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| durationMsec | int32 (formatted integer)| `int32` |  | |  |  |
| feature | string| `string` |  | |  |  |
| priorityBoost | int32 (formatted integer)| `int32` |  | |  |  |
| token | string| `string` |  | |  |  |
| weight | float (formatted number)| `float32` |  | |  |  |



### <span id="v1-token-valid"></span> v1TokenValid


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| token | string| `string` |  | |  |  |
| valid | boolean| `bool` |  | |  |  |



### <span id="v1-trace-config"></span> v1TraceConfig


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| collectorKey | string| `string` |  | |  |  |
| collectorUrl | string| `string` |  | |  |  |
| collectorUrlHttp | string| `string` |  | |  |  |
| headerSampleConfigs | [][V1HeaderTraceConfig](#v1-header-trace-config)| `[]*V1HeaderTraceConfig` |  | |  |  |
| overrides | [][V1TraceConfigOverride](#v1-trace-config-override)| `[]*V1TraceConfigOverride` |  | |  |  |
| paramSampleConfigs | [][V1ParamTraceConfig](#v1-param-trace-config)| `[]*V1ParamTraceConfig` |  | |  |  |
| sampleRateDefault | float (formatted number)| `float32` |  | |  |  |



### <span id="v1-trace-config-override"></span> v1TraceConfigOverride


> This configuration allows different sample rates to be applied to selected spans.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| sampleRate | float (formatted number)| `float32` |  | |  |  |
| spanSelectors | [][V1SpanSelector](#v1-span-selector)| `[]*V1SpanSelector` |  | |  |  |



### <span id="v1-validate-token-response"></span> v1ValidateTokenResponse


> Specifies whether tokens were valid or not.
  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| tokensValid | [][V1TokenValid](#v1-token-valid)| `[]*V1TokenValid` |  | |  |  |
| valid | boolean| `bool` |  | |  |  |


