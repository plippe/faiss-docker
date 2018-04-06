ARG IMAGE
FROM ${IMAGE}

ARG FAISS_CPU_OR_GPU
ARG FAISS_VERSION

RUN apt-get update && \
    apt-get install -y curl bzip2  && \
    curl https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh > /tmp/conda.sh && \
    bash /tmp/conda.sh -b -p /opt/conda && \
    /opt/conda/bin/conda update -n base conda && \
    /opt/conda/bin/conda install -y -c pytorch faiss-${FAISS_CPU_OR_GPU}=${FAISS_VERSION} && \
    apt-get remove -y --auto-remove curl bzip2 && \
    apt-get clean && \
    rm -fr /tmp/conda.sh

ENV PATH="/opt/conda/bin:${PATH}"
