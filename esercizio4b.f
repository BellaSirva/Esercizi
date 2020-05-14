	include "dog_subroutine.f"
     
	program esercizio4
	integer n
	complex x(100), s, p
	write(*,*)"Inserisci la dimensione dell'array (fino a 100) "
	read(*,*)n
	call crea_lista_complex(x, n)
	call sommatoria_complex(x, n, s)
	call produttoria_complex(x, n, p)
	write(*,*)"La sommatoria e' uguale a ", s
	write(*,*)"La prouttoria e' uguale a ", p
	read(*,*)
	end