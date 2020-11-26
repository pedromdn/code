# POR:Medina Isiordia Pedro Luis
# No. Control: 18212218
# Archivo Makefile: Codigo que compila un programa definido.
# Fecha: 22/11/2020
# Materia: Lenguajez de interfaz.

# Makefile
all: practica
practica: practica.o  # enlazarlo para correrlo
	ld -o $@ $+
practica.o: practica.s # compilarlo nos genera el .o
	as -g -mfpu=vfpv2 -o $@ $<
clean:   # limpiar todo que no se ocupa como lo .o basura
	rm -vf practica *.o
