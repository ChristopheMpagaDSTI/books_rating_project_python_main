SHELL = /bin/bash

run:
	docker build -t dsti_pythonlab_a22/books_rating_project_python_main .
	docker run --name dsti_pythonlab_a22 \
	-p 8888:8888 \
	dsti_pythonlab_a22/books_rating_project_python_main


.EXPORT_ALL_VARIABLES:
NAME = bschat
GOARCH = amd64
PKG = gitlab.vestiairecollective.com/scieng/gehirn/bschat/message_analysis
Version = "v1.0.0"

.PHONY: test
## Run all the tests (unit & integration)
test: test-unit test-integration

.PHONY: test-unit
## Run the unit tests
test-unit:
    @go tool cover -func=coverage.out && \
    go test -tags=integration ./...

.PHONY: test-integration
## Run the integration tests
test-integration:
    @GOOS=linux GOARCH=${GOARCH} go build -i -v -o ${NAME}-linux-${GOARCH} -ldflags="-s -w" ${PKG} && \
    ./${NAME}-linux-${GOARCH}


.PHONY: image
## Build Docker image
image:
    @docker build --rm -t bschat --build-arg GITLAB_DEPLOY_TOKEN=$(GITLAB_CCHAT_DEPLOY_TOKEN) --build-arg ENVIRONMENT=$(ENVIRONMENT) -f Dockerfile ./

.DEFAULT_GOAL := help

help:
    @echo "$$(tput bold)Available rules:$$(tput sgr0)"
    @echo
    @sed -n -e "/^## / { \
        h; \
        s/.*//; \
        :doc" \
        -e "H; \
        n; \
        s/^## //; \
        t doc" \
        -e "s/:.*//; \
        G; \
        s/\\n## /---/; \
        s/\\n/ /g; \
        p; \
    }" ${MAKEFILE_LIST} \
    | LC_ALL='C' sort --ignore-case \
    | awk -F '---' \
        -v ncol=$$(tput cols) \
        -v indent=19 \
        -v col_on="$$(tput setaf 6)" \
        -v col_off="$$(tput sgr0)" \
    '{ \
        printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
        n = split($$2, words, " "); \
        line_length = ncol - indent; \
        for (i = 1; i <= n; i++) { \
            line_length -= length(words[i]) + 1; \
            if (line_length <= 0) { \
                line_length = ncol - indent - length(words[i]) - 1; \
                printf "\n%*s ", -indent, " "; \
            } \
            printf "%s ", words[i]; \
        } \
        printf "\n"; \
    }' \
    | more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')