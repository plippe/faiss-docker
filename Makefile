.PHONY: build release
.DEFAULT_GOAL := build

# https://github.com/facebookresearch/faiss/tags
# Tests fail for 1.6.1, 1.6.0, 1.5.3
GIT_TAG := 1.5.2

build:
	docker build \
		--tag plippe/faiss-docker:$(GIT_TAG) \
		https://github.com/facebookresearch/faiss.git#v$(GIT_TAG)

release:
	docker push plippe/faiss-docker:$(GIT_TAG)
