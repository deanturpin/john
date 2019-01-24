FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y john
COPY . /src
WORKDIR /src
CMD \
	# Extract the hash and store it
	keepass2john keepass2.kdbx | tee shadow && \
	# Crack the master password
	john shadow && \ 
	john shadow --show
