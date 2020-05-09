FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y sudo

WORKDIR /root/dotfiles
ADD . .

CMD [ "/bin/sh", "setup.sh" ]