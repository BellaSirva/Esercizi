	include "dog_subroutine.f"

	program esercizio12

	double precision x(100), y(100), first, last
	integer n
	write(*,*)"Inserisci il primo elemento delle x(il piu' piccolo):"
	read(*,*)first
	write(*,*)"Inserisci l'ultimo elemento delle x(il piu' grande):"
	read(*,*)last
	write(*,*)"Inserisci il numero di elementi che vuoi considerare ne
     ll'intervallo(max 100):"
	read(*,*)n
	call riempi_ascissa_double(x, n, first, last)
	open(1, file="12.txt", status="unknown")
	do i=1, n
		y(i)=x(i)-1
		y(i)=y(i)**7
		write(*,*)"x=",x(i),"       y=",y(i)
		write(1,*)x(i)," ",y(i)
	enddo
	close(1)
	read(*,*)

	end
