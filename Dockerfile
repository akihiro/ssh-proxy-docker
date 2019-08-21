FROM ubuntu:bionic
RUN useradd -m ssh-proxy && install -d -m 0755 -o ssh-proxy -g ssh-proxy /home/ssh-proxy/.ssh
RUN apt-get -q update && apt-get install --no-install-recommends -y openssh-client autossh && apt-get clean && rm -rf /var/lib/apt/lists
USER ssh-proxy
WORKDIR /home/ssh-proxy/
EXPOSE 50080
