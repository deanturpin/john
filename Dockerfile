FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y john
RUN apt install -y curl
CMD john <(keepass2john <(curl https://deanturpin.github.io/john/easy.kdbx))
