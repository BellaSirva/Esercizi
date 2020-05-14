	include "dog_subroutine.f"

	program esercizio5
	real x(100), massimo, minimo
	write(*,*)"Inserisci dimensione array (fino a 100): "
	read(*,*)n
	call crea_lista(x, n)
	write(*,*)"Il massimo e': ", massimo(x, n)
	write(*,*)"Il minimo e': ", minimo(x, n)
	read(*,*)
	end


