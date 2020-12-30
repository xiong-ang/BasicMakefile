target=app
src=$(wildcard ./*.c)
obj=$(patsubst ./%.c, ./%.o, $(src))
CC=gcc
$(target):$(obj)
	$(CC) $(obj) -o $(target) -g

%.o:%.c
	$(CC) -c $^ -o $@ -g

.PHONY:clean
clean:
	rm -f $(obj) $(target)
