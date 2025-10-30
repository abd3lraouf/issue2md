.PHONY: all cmdline web clean

all: web cmdline

cmdline:
	go build -o issue2md github.com/abd3lraouf/issue2md/cmd/issue2md

web:
	go build -o issue2mdweb 

buildimage:
	docker build -t abd3lraouf/issue2mdweb .

push:
	docker push abd3lraouf/issue2mdweb:latest

clean:
	rm -fr issue2md issue2mdweb
