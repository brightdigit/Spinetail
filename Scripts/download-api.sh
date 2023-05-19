curl -o OpenAPI/marketing.json https://github.com/mailchimp/mailchimp-client-lib-codegen/raw/main/spec/marketing.json
openapi-generator generate -i OpenAPI/marketing.json -g openapi --skip-validate-spec -o OpenAPI
