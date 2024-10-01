CFLAGS = -Wall -Wextra -g -I3p

all: tt

tt: src/cli.o src/tinytemplate.o 3p/xjson.o
	$(CC) $^ -o $@

clean:
	$(RM) tt */*.o
