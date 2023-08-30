ARG ZMK_IMAGE_VERSION=3.2
FROM zmkfirmware/zmk-build-arm:${ZMK_IMAGE_VERSION} as BASE
ARG ZMK_BRANCH=main
ARG ZMK_REPO=https://github.com/zmkfirmware/zmk.git

RUN git clone ${ZMK_REPO} --branch=${ZMK_BRANCH} --single-branch zmk && \
  cd zmk && \
  west init -l app/ && \
  west update

RUN --mount=type=bind,target=/tmp/behaviors,source=behaviors \
  cd zmk && \
  bash /tmp/behaviors/install.sh