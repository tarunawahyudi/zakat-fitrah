TARGET=build/zakat
SRC=src
OBJ=$(SRC)/main.asm $(SRC)/input.asm $(SRC)/calculation.asm $(SRC)/output.asm

all: $(TARGET)

$(TARGET):
	mkdir -p build
	nasm -f elf64 -o build/main.o $(SRC)/main.asm
	nasm -f elf64 -o build/input.o $(SRC)/input.asm
	nasm -f elf64 -o build/calculation.o $(SRC)/calculation.asm
	nasm -f elf64 -o build/output.o $(SRC)/output.asm
	ld -o $(TARGET) build/main.o build/input.o build/calculation.o build/output.o

clean:
	rm -rf build/
