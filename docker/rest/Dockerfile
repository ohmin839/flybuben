FROM dart:2.17.6-sdk

ARG UID=1000
ARG GID=1000
ARG USERNAME=user
RUN groupadd -g $GID $USERNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

EXPOSE 8080

USER $USERNAME
WORKDIR /flybuben_rest
