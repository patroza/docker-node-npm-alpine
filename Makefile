RELEASE = 8.1.3

all: test

build:
	docker build -t node-npm:$(RELEASE) .	

test:
	docker run node-npm:$(RELEASE) node --version
