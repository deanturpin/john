FROM alpine
RUN apk add john
COPY . /src
WORKDIR /src
CMD \
	# Extract the hash and store it
	keepass2john keepass2.kdbx | tee shadow && \
	# Crack the master password
	john shadow 
