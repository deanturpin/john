FROM alpine
RUN apk add john
RUN apk add curl
RUN apk add bash
RUN curl https://deanturpin.github.io/john/easy.kdbx > easy.kdbx
CMD keepass2john easy.kdbx | tee shadow && john shadow
