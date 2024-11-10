BINARY_NAME := greeter
SOURCE_DIR := ./cmd/main.go

.PHONY: all test lint build clean

all: test lint build

test:
	go test -v ./...

lint:
	golangci-lint run ./...

build:
	go build -o $(BINARY_NAME) $(SOURCE_DIR)

clean:
	rm -f $(BINARY_NAME)
