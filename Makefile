SRC = ./src/*
INC = ./inc/*
GXX = g++
FLAGS = -g -Wextra -Wall -std=c++20 -pthread
NCUR = -lncurses
BIN = ./bin/
OUT = ${BIN}SO2-Projekt-2

build:
	$(GXX) $(FLAGS) $(SRC) -o $(OUT) $(NCUR)

clear:
	rm -rf $(BIN)*

run:
	$(OUT)

all: clear build run
