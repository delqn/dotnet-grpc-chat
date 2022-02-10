#!make

.PHONY: run-bonnie
run-bonnie: build
	dotnet run --project=./bonnie

.PHONY: run-clyde
run-clyde: build
	dotnet run --project=./clyde

.PHONY: ping-bonnie-controller
ping-bonnie-controller: clean-up-kubernetes

.PHONY: build
build:
	dotnet build --project=./bonnie
	dotnet build --project=./clyde

.PHONY: format
format:
	dotnet format ./bonnie
	dotnet format ./clyde
