FROM debian:trixie-slim
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /opt

RUN apt update && apt install -y \
    python3-cups \
    python3-lxml \
&& rm -rf /var/lib/apt/lists/*

COPY . ./

ENTRYPOINT ["python3", "airprint-generate.py"]
