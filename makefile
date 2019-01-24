all: build run

build:
	docker build -t john .

run:
	docker run --rm -it john

install:
	apt install -y docker.io
