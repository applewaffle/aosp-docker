FROM ubuntu:14.04

COPY sources.list /etc/apt/sources.list
COPY gitconfig /root/.gitconfig

RUN apt-get update && apt-get install -y apt-transport-https openjdk-7-jdk python git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip && apt-get clean && rm -rf /var/lib/apt/lists/* && echo "export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'" >> /root/.bashrc && echo "export PATH=$PATH:/root/aosp/tool/" >> /root/.bashrc && echo "export USER=$(whoami)" >> /root/.bashrc
