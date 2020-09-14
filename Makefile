# See:
# https://sohlich.github.io/post/go_makefile/
# https://github.com/pazuzu156/persephone/blob/master/Makefile

# Go stuff
GOCMD=go
GOBUILD=${GOCMD} build
GOCLEAN=${GOCMD} clean
GOTEST=${GOCMD} test
GOGET=${GOCMD} get
GORUN=${GOCMD} run

APP=fsbot
BUILDDIR=${APP}.out

all: test build

run:
	make clean
	make build
	./out/${APP}

build:
	${GOBUILD} -o out/${APP}

clean:
	${GOCLEAN}
	rm -rf out/

test:
	${GOTEST} -v

deps:
	${GOGET} github.com/salmonllama/gourd

format:
	gofmt -w .
