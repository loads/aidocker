AILOADS_TEST = test
AILOADS_GITHUB = https://github.com/tarekziade/shavar-loadtests

.PHONY: docker-build docker-run docker-export

docker-build:
	docker build -t ailoads/loadtest .

docker-run:
	docker run -e AILOADS_GITHUB=$(AILOADS_GITHUB) -e AILOADS_TEST=$(AILOADS_TEST) ailoads/loadtest

docker-export:
	docker save "ailoads/loadtest:latest" | bzip2> ailoads-latest.tar.bz2

