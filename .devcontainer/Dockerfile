FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  jq \
  git \
  sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# sudo権限付与
ARG USER_NAME=node
RUN echo $USER_NAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USER_NAME \
  && chmod 0440 /etc/sudoers.d/$USER_NAME
# non-root-userに切り替え
USER $USER_NAME

# cosignのインストール
RUN COSIGN_LATEST_VERSION=$(curl https://api.github.com/repos/sigstore/cosign/releases/latest | jq -r .tag_name | tr -d "v")  \
  && sudo curl -O -L "https://github.com/sigstore/cosign/releases/latest/download/cosign_${COSIGN_LATEST_VERSION}_amd64.deb" \
  && sudo dpkg -i cosign_${COSIGN_LATEST_VERSION}_amd64.deb
# tenvのインストール
RUN TENV_LATEST_VERSION=$(curl --silent https://api.github.com/repos/tofuutils/tenv/releases/latest | jq -r .tag_name) \
  && sudo curl -O -L "https://github.com/tofuutils/tenv/releases/latest/download/tenv_${TENV_LATEST_VERSION}_amd64.deb" \
  && sudo dpkg -i "tenv_${TENV_LATEST_VERSION}_amd64.deb"
# AWS CLIのインストール
RUN sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && sudo unzip awscliv2.zip \
  && sudo ./aws/install
# Amazon Q Developer for CLIのインストール
RUN sudo curl --proto '=https' --tlsv1.2 -sSf https://desktop-release.q.us-east-1.amazonaws.com/latest/amazon-q.deb -o amazon-q.deb
# && sudo apt install -y ./amazon-q.deb
# AWS CDKのインストール
RUN sudo npm install -g aws-cdk
