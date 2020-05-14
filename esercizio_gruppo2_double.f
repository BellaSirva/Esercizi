	include "dog_subroutine.f"

	program esercizio_gruppo2

	double precision a, b, x(20), n1, n2, n_inf

	write(*,*)"Inserisci a: "
	read(*,*)a

	write(*,*)"Inserisci b: "
	read(*,*)b

c	open(1, file="norme_vettoriali.txt", status="unknown")

	do i=2, 20

		call riempi_ascissa_double(x, i, a, b)
		
		call stampa_lista_double(x,i)

		call norma_vet_1_double(x,i,n1)
		call norma_vet_2_double(x,i,n2)
		call norma_vet_inf_double(x,i,n_inf)
		write(*,*)"Vettore da ",i," elementi"
		write(*,*)"n1=",n1
		write(*,*)"n2=",n2
		write(*,*)"ni=",n_inf
		write(*,*)""  

	enddo

c	close(1)
	read(*,*)
	end