FROM debian

WORKDIR /

RUN apt-get update
RUN apt-get upgrade -y
RUN dpkg --add-architecture i386
RUN apt-get install wget gnupg2 software-properties-common -y
RUN wget -qO - https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
RUN apt-add-repository https://dl.winehq.org/wine-builds/debian/
RUN apt-get update
RUN apt-get install --install-recommends winehq-stable -y
RUN wineboot

COPY ./lazarus /root/.wine/drive_c/lazarus/
COPY ./entrypoint.sh ./
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]