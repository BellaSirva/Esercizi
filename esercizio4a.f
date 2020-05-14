	include "dog_subroutine.f"
     
	program esercizio4

	real x(100), s, p
	write(*,*)"Inserisci la dimensione dell'array (fino a 100) "
	read(*,*)n
	call crea_lista(x, n)
	s=sommatoria_real(x, n)
	p=produttoria_real(x, n)
	write(*,*)"La sommatoria e' uguale a ", s
	write(*,*)"La prouttoria e' uguale a ", p
	read(*,*)
	end