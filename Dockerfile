FROM alpine
RUN apk add john
COPY . /src
WORKDIR /src
CMD keepass2john keepass2.kdbx
