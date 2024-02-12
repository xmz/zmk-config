ARG ZMK_IMAGE_VERSION=3.5
FROM zmkfirmware/zmk-build-arm:${ZMK_IMAGE_VERSION} as BASE
ARG ZMK_BRANCH=main
ARG ZMK_REPO=https://github.com/zmkfirmware/zmk.git

# Install required tools
RUN apt update && \
  apt install -y jq python3-pip --no-install-recommends && \
  python3 -m pip install remarshal

# Clone and initialize repo
RUN git clone ${ZMK_REPO} --branch=${ZMK_BRANCH} --single-branch zmk && \
  cd zmk && \
  west init -l app/ && \
  west update