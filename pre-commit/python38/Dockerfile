# docker run --rm -it \
# -v $(pwd):/root/src \
# jurriaanpro/pre-commit:3.8-slim \
# pre-commit -h

ARG PYTHON_BASE_IMAGE_TAG=3.8-slim
FROM python:${PYTHON_BASE_IMAGE_TAG}

RUN apt update && apt install -y \
	git \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install pre-commit

WORKDIR /root/src
