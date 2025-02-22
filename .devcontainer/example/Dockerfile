FROM chrismckelt/devcontainer-prebuild-template:latest

RUN  update-ca-certificates

WORKDIR /home

COPY * .

HEALTHCHECK NONE
# pnpm setup runs next
ENTRYPOINT ["bash"]
SHELL ["/bin/bash", "-c"]