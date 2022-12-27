## Deuxieme exemple de Makefile - gestion d’une arborescence
CC=gcc
CFLAGS=-Wall -ansi -pedantic
LDFLAGS=
EXEC=toto
all: $(EXEC)
toto: main.o produit.o
	$(CC) -o $@ $^ $(LDFLAGS)
produit.o:produit.c produit.h 
	$(CC) -o $@  $< -c $(CFLAGS) 
main.o:main.c produit.h 
	$(CC) -o $@ $< -c $(CFLAGS) 
clean:
	rm -f *.o
distclean:clean
	rm -f $(EXEC)
zip:
	tar -cf archive.tar produit.h produit.c main.c Makefile
