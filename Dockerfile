FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y john
COPY . /src
WORKDIR /src

# Extract the hash and store it
# Then Crack the master password
CMD \
	keepass2john keepass2.kdbx | tee shadow && \
	john shadow && \ 
	john shadow --show
