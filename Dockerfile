FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y sudo

WORKDIR /root/dotfiles
ADD . .
RUN chmod +x ./setup.sh

CMD [ "/bin/bash", "setup.sh" ]
