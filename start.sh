cf push --no-start --docker-image gitlab/gitlab-runner:alpine

cf set-env gitlab-runner-cf CI_SERVER_URL "https://gitlab.com/"
cf set-env gitlab-runner-cf RUNNER_NAME "gitlab-runner-cf-sandbox"
cf set-env gitlab-runner-cf REGISTRATION_TOKEN "XYZ"
cf set-env gitlab-runner-cf REGISTER_NON_INTERACTIVE true
cf set-env gitlab-runner-cf REGISTER_RUN_UNTAGGED true
cf set-env gitlab-runner-cf RUNNER_TAG_LIST "some-tags"
cf set-env gitlab-runner-cf RUNNER_EXECUTOR "shell"

cf start gitlab-runner-cf
