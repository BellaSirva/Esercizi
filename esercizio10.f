	include	"dog_subroutine.f"
     
    program esercizio10
	integer n
	real v1(100), v2(100), p
	write(*,*)"Inserisci dim vettori: "
	read(*,*)n
	write(*,*)"Inserisci componenti vettore 1"
	call crea_lista(v1, n)
	call stampa_lista(v1, n)
	write(*,*)"Inserisci componenti vettore 2"
	call crea_lista(v2, n)
	call stampa_lista(v2, n)
	call prodotto_scalare_vettori(v1, v2, p, n)
	write (*,*) "Il risultato del prodotto scalare e' ", p
	read(*,*)
	end
