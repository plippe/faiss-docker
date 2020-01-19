.PHONY: build release
.DEFAULT_GOAL := build

# https://github.com/facebookresearch/faiss/tags
# Tests fail for 1.6.1, 1.6.0, 1.5.3
FAISS_RELEASE := 1.5.2

build:
	docker build \
		--tag plippe/faiss-docker:$(FAISS_RELEASE) \
		https://github.com/facebookresearch/faiss.git#v$(FAISS_RELEASE)

release:
	docker push plippe/faiss-docker:$(FAISS_RELEASE)
