FROM ubuntu:18.04

ARG DOCKER_UID

# Injector
ADD injector.sh /tmp/injector.sh
RUN chmod +x /tmp/injector.sh \
	&& sh /tmp/injector.sh \
	&& rm /tmp/injector.sh

RUN apt-get update && apt-get install -y \
	git \
	git-svn \
	man

RUN apt-get install -y sshpass


USER $DOCKER_UID


WORKDIR /var/docker

ADD command.sh /var/docker-command.sh

CMD ["sh", "/var/docker-command.sh"]
