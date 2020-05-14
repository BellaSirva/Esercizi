	include "dog_subroutine.f"

	program esercizio5
	integer n
	real x(100), m
	write(*,*)"Inserisci dimensione array: "
	read(*,*)n
	call crea_lista(x, n)
	call media(x, n, m)
	write(*,*)"La media e' ", m
	read(*,*)
	end