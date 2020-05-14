	include "dog_subroutine.f"

	program esercizio13
	
	real x(100), y(100), first, last
	integer n
	write(*,*)"Inserisci il primo elemento delle x(il piu' piccolo):"
	read(*,*)first
	write(*,*)"Inserisci l'ultimo elemento delle x(il piu' grande):"
	read(*,*)last
	write(*,*)"Inserisci il numero di elementi che vuoi considerare ne
     ll'intervallo(max 100):"
	read(*,*)n
	call riempi_ascissa(x, n, first, last)

	do i=1, n
		y(i)=x(i)/(1+(x(i)**2))

		write(*,*)"x=",x(i),"       y=",y(i)
	enddo
	
	read(*,*)

	end
