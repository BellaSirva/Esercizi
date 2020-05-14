	program esercizio2a
	real eps
	eps=1
10	if((1+eps).NE.1)then
		eps=eps/2
		goto 10
	endif
	eps=eps*2
	write(*,*)eps
	read(*,*)
	stop
	end
