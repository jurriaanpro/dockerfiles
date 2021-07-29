FROM adoptopenjdk/openjdk13

RUN apt update && apt install -y \
    git \
    python3 \
    python3-pip \
    --no-install-recommends \
    && python3 -m pip install pre-commit \
	&& rm -rf /var/lib/apt/lists/*

RUN echo "git $(git --version)" \
    && echo "java: $(java --version)" \
    && echo "python: $(python3 --version)" \
    && echo "pip: $(python3 -m pip --version)" \
    && echo "pre-commit: $(pre-commit --version)"

CMD ["pre-commit"]
