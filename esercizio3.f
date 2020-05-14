	include "dog_subroutine.f"

	program esercizio3
	
	integer a, b, r
	write(*,*)"Inserisci a: "
	read(*,*)a
	write(*,*)"Inserisci b: "
	read(*,*)b
	call resto(a, b, r)
	if(b.ne.2) then
		if(r.eq.0)then
			write(*,*)"a e' multiplo di b"
		else
			write(*,*)"a non e' multiplo di b"
		endif
	else
		if(r.eq.0)then
			write(*,*)"a e' pari"
		else
			write(*,*)"a non e' pari"
		endif
	endif
	read(*,*)
	stop
	end