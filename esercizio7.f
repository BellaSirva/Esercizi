	include "dog_subroutine.f"
	
	program esercizio7
	
	real x(100), scelta
	write(*,*)"Inserisci dim array (da 1 a 100) "
	read(*,*)n
	call crea_lista(x, n)
10	write(*,*)"Per ord crescente 1, per decrescente 2: "
	read(*,*)scelta
	if (scelta .eq. 1)then
		call ord_cre(x, n)
	elseif(scelta .eq. 2)then
		call ord_dec(x, n)
	else
		write(*,*)"La scelta inserita non è valida!"	
		goto 10
	endif
	do i=1, n
		write(*,*)x(i)
	enddo
	read(*,*)
	end
