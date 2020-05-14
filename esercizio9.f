	include "dog_subroutine.f"
	
	program esercizio9
	integer dim, n, matr1(10, 10), matr2(10, 10), matr3(10, 10)
	parameter(dim=10)
	write(*,*)"Inserisci ordine matrice "
	read(*,*)n	
	write(*,*)"Matrice 1 "
	call crea_matrice(matr1, dim, n)
	call stampa_matrice(matr1, dim, n)
	write(*,*)"Matrice 2 "
	call crea_matrice(matr2, dim, n)
	call stampa_matrice(matr2, dim, n)
	call moltiplica_matrici(matr1, matr2, matr3, dim, n)
	write(*,*)" "
	write(*,*)"La matrice prodotto e':"
	call stampa_matrice(matr3, dim, n)
	read(*,*)
	end
