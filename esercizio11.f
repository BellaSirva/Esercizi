	include	"dog_subroutine.f"
	
	program esercizio11
	integer n, m(100, 100)
	real v1(100), v2(100)
	write(*,*)"Inserisci dim vettori: "
	read(*,*)n
	write(*,*)"Inserisci componenti vettore 1"
	call crea_lista(v1, n)
	call stampa_lista(v1, n)
	write(*,*)"Inserisci componenti vettore 2"
	call crea_lista(v2, n)
	call stampa_lista(v2, n)
	call prodotto_tensoriale_vettori(v1, v2, m, 100, n)
	call stampa_matrice(m, 100, n)
	read(*,*)
	end
	