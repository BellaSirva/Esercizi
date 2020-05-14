	include "dog_subroutine.f"

	program esercizio_gruppo2

	real a, b, x(20), n1, n2, n_inf

	write(*,*)"Inserisci a: "
	read(*,*)a
	
	write(*,*)"Inserisci b: "
	read(*,*)b
	
c	open(1, file="norme_vettoriali.txt", status="unknown")

	do i=2, 20
	
		call elem_eqd(x,i,a,b)
		write(*,*)"Vettore da ",i," elementi"
		call stampa_lista(x,i)
		write(*,*)""
		call norma_vet_1(x, i, n1)
		call norma_vet_2(x, i, n2)
		call norma_vet_inf(x, i, n_inf)
		write(*,*)"n1=",n1
		write(*,*)"n2=",n2
		write(*,*)"ni=",n_inf
		write(*,*)""
		
	enddo
	
c	close(1)
	read(*,*)
	end