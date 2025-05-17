TARGET = out
SRC = hello.cpp

all:
	nvcc -arch=sm_86 $(SRC) -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
