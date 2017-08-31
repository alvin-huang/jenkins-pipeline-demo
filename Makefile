SRCDIR                  := $(shell pwd)
DOCKER_RUN               = docker run --rm -i -v $(SRCDIR):/mnt $(DOCKER_TAG)
DOCKER_TAG               = jenkins-demo:latest
	
build-rpm: docker
	${DOCKER_RUN} \
		bash -exuo pipefail -c '\
		cd /mnt && \
		./$(BUILD_SCRIPT) \
        '

docker: 
	docker build -t $(DOCKER_TAG) .

.PHONY: docker
