FROM ubuntu:20.04
RUN apt update
RUN apt-get install -y x11vnc xvfb dos2unix
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh
EXPOSE 5900
ENTRYPOINT ["/entrypoint.sh"]