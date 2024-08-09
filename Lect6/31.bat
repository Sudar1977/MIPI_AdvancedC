gcc -c main.s -o main.o
hexdump main.o
objdump -D main.o > main.asm