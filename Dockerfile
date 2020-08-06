FROM        jrottenberg/ffmpeg
RUN         apt-get update
RUN         apt-get -y install iputils-ping iptables apt-utils
RUN         apt-get -y install dnsutils curl

COPY        docker-exec /sbin/docker-exec
RUN         chmod +x /sbin/docker-exec

ENV         LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64:/usr/lib:/usr/lib64:/lib:/lib64

CMD         ["--help"]
ENTRYPOINT  ["docker-exec"]
