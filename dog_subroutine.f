	subroutine fattoriale_int(n, fi)
	integer n, fi
	fi=1
	do i=2, n
		fi=fi*i
	enddo
	end
	
	subroutine fattoriale_real(n, fr)
	integer n
	real fr
	fr=1
	do i=2, n
		fr=fr*i
	enddo
	end

	subroutine fattoriale_double(n, fd)
	integer n
	double precision fd
	fd=1
	do i=2, n
		fd=fd*i
	enddo
	end

	subroutine resto(a, b, r)
	integer a, b, r
	r=a/b
	r=a-(r*b)
	end
	
	real function minimo(lista, dim)
	integer dim
	real lista(dim)
	minimo=lista(1)
	do i=1, dim
		if(lista(i) .lt. minimo)then
			minimo=lista(i)
		endif
	enddo
	return
	end

	real function massimo(lista, dim)
	integer dim
	real lista(dim)
	massimo=lista(1)
	do i=1, dim
		if(lista(i) .gt. massimo)then
			massimo=lista(i)
		endif
	enddo
	return
	end

	real function sommatoria_real(lista, dim)
	integer dim
	real lista(dim)
	sommatoria_real=0
	do i=1, dim
		sommatoria_real=sommatoria_real+lista(i)
	enddo
	return
	end

	real function produttoria_real(lista, dim)
	integer dim
	real lista(dim)
	produttoria_real=1
	do i=1, dim
		produttoria_real=produttoria_real*lista(i)
	enddo
	return
	end
	
	subroutine sommatoria_complex(lista, dim, s)
	integer dim
	complex lista(dim), s
	do i=1, dim
		s=s+lista(i)
	enddo
	return
	end

	subroutine produttoria_complex(lista, dim, p)
	integer dim
	complex lista(dim), p
	p=lista(1)
	do i=2, dim
		p=p*lista(i)
	enddo
	return
	end
	
	subroutine media(lista, dim, m)
	integer dim
	real lista(dim), m
	real s
	s=sommatoria_real(lista, dim)
	m=(s/dim)
	return
	end

	subroutine crea_lista(lista, dim)
	integer dim
	real lista(dim)
	do i=1, dim
		write(*,*)"Inserisci elemento ", i
		read(*,*)lista(i)
	enddo
	end
	
	subroutine crea_lista_complex(lista, dim)
	integer dim
	complex lista(dim)
	do i=1, dim
		write(*,*)"Inserisci elemento ", i
		read(*,*)lista(i)
	enddo
	end

	subroutine ord_cre(lista, dim)
	integer dim	
	real lista(dim), tmp
	do i=1, dim
		do j=1, dim-1
			if(lista(j) .gt. lista(j+1))then
				tmp=lista(j)
				lista(j)=lista(j+1)
				lista(j+1)=tmp
			endif
		enddo
	enddo
	end

	subroutine ord_dec(lista, dim)
	integer dim	
	real lista(dim), tmp
	do i=1, dim
		do j=1, dim-1
			if(lista(j) .lt. lista(j+1))then
				tmp=lista(j)
				lista(j)=lista(j+1)
				lista(j+1)=tmp
			endif
		enddo
	enddo
	end
	
	subroutine stampa_lista(lista, dim)
	integer dim
	real lista(dim)
	do i=1, dim
		write(*,*)lista(i)
	enddo
	end
	
	subroutine stampa_lista_double(lista, dim)
	integer dim
	double precision lista(dim)
	do i=1, dim
		write(*,*)lista(i)
	enddo
	end

	subroutine somma_matrici(a, b, c, dim, n)
	integer dim, n, a(dim, *), b(dim, *), c(dim, *)
	do i=1, n
		do j=1, n
			c(i, j)=a(i, j)+b(i, j)
		enddo
	enddo
	end

	subroutine moltiplica_matrici(a, b, c, dim, n)
	integer dim, n, a(dim, *), b(dim, *), c(dim, *), elem
	do i=1, n
		do j=1, n
			elem=0
			do k=1, n
				elem=elem+a(i, k)*b(k, j)
			enddo
			c(i, j)=elem
		enddo
	enddo
	end

	subroutine crea_matrice(matrice, dim, n)
	integer dim, matrice(dim, dim), n
	do i=1, n
		write(*,*)"Inserisci riga ", i
		read(*,*)(matrice(i, j), j=1, n)
	enddo
	end

	subroutine stampa_matrice(matrice, dim, n)
	integer dim, matrice(dim, dim), n
	do i=1, n
		write(*,*)(matrice(i, j), j=1, n)
	enddo
	end

	subroutine prodotto_scalare_vettori(a, b, c, dim)
	integer dim
	real a(dim), b(dim), c
	c=0
	do i=1, dim
		c=a(i)*b(i)+c
	enddo
	end
	
	subroutine prodotto_tensoriale_vettori(a, b, c, dim, n)
	integer dim, c(dim, dim), n
	real a(dim), b(dim)
	c=0
	do i=1, n
		do j=1, n
			c(i, j)=a(i)*b(j)
		enddo
	enddo
	end
	
	subroutine riempi_ascissa(x, dim, first, last)
	integer dim
	real x(dim), first, last
	real step, tmp
	step=(last-first)/(dim-1)
	x(1)=first
	x(dim)=last
	tmp=first
	do i=2, dim-1
		tmp=tmp+step
		x(i)=tmp
	enddo
	end
	
	subroutine riempi_ascissa_double(x, dim, first, last)
	integer dim
	double precision x(dim), first, last
	double precision step, tmp
	step=(last-first)/(dim-1)
	x(1)=first
	x(dim)=last
	tmp=first
	do i=2, dim-1
		tmp=tmp+step
		x(i)=tmp
	enddo
	end
	
	subroutine norma_vet_1(x, dim, n)
	integer dim
	real x(dim), n
	n=abs(x(1))
	do i=2, dim
		n=n+(abs(x(i)))
	enddo
	return
	end
	
	subroutine norma_vet_1_double(x, dim, n)
	integer dim
	double precision x(dim), n
	n=abs(x(1))
	do i=2, dim
		n=n+(abs(x(i)))
	enddo
	return
	end
	
	subroutine norma_vet_2(x, dim, n)
	integer dim
	real x(dim), n
	n=x(1)**2
	do i=2, dim
		n=n+(x(i)**2)
	enddo
	n=sqrt(n)
	return
	end

	subroutine norma_vet_2_double(x, dim, n)
	integer dim
	double precision x(dim), n
	n=x(1)**2
	do i=2, dim
		n=n+(x(i)**2)
	enddo
	n=sqrt(n)
	return
	end
	
	subroutine norma_vet_inf(x, dim, n)
	integer dim
	real x(dim), n
	n=abs(x(1))
	do i=2, dim
		if(n.lt.abs(x(i)))n=abs(x(i))
	enddo
	return
	end
	
	subroutine norma_vet_inf_double(x, dim, n)
	integer dim
	double precision x(dim), n
	n=abs(x(1))
	do i=2, dim
		if(n.lt.abs(x(i)))n=abs(x(i))
	enddo
	return
	end
	
	real function norma_mat_1(x, dim)
	integer dim
	real x(dim, dim)
	real v(dim), tmp, massimo
	do i=1, dim
	tmp=0
		do j=1, dim
			tmp=tmp+abs(x(j,i))
		enddo
	v(i)=tmp
	enddo
	norma_mat_1=massimo(v,dim)
	return
	end

	real function norma_mat_frob(x, dim)
	integer dim
	real x(dim,dim)
	norma_mat_2=0
	do i=1, dim
		do j=1, dim
			norma_mat_frob=norma_mat_frob+x(i,j)**2
		enddo
	enddo
	norma_mat_frob=sqrt(norma_mat_frob)
	return
	end

	real function norma_mat_inf(x, dim)
	integer dim
	real x(dim, dim)
	real v(dim), tmp, massimo
	do i=1, dim
	tmp=0
		do j=1, dim
			tmp=tmp+abs(x(i,j))
		enddo
	v(i)=tmp
	enddo
	norma_mat_inf=massimo(v,dim)
	return
	end
	
	subroutine hilbert(h, n)
	integer n
	real h(n,n)
	do i=1, n
		do j=1, n
			h(i,j) = 1./(i+j-1)
		enddo
	enddo
	end
	
	subroutine wilkinson(w, n)
	integer n
	real w(n,n)
	do i=1, n
		do j=1, n
			if(i.eq.j)then
				w(i,j)=1
			else if(i.gt.j)then
				w(i,j)=(-1)**(j-i+1)
			else if((i.lt.j).and.(j.eq.n))then
				w(i,j)=(-1)**i
			else
				w(i,j)=0
			endif
		enddo
	enddo
	end
	
	subroutine vandermonde(v, n, a, b)
	integer n
	real v(n,n), a, b
	real vet(n), x
	x=(b-a)/(n-1)
	do i=1, n
		vet(i)=a+(i-1)*x
	enddo
	do i=1, n
		do j=1, n
			v(i,j)=vet(i)**(j-1)
		enddo
	enddo
	end
	
	subroutine toepliz(t, n, v)
	integer n
	real t(n,n)
	real v(-(n-1):(n-1))
	call toepliz_vet(v, n)
	do i=1, n
		do j=1, n
			t(i,j)=v(j-i)
		enddo
	enddo
	end
	
	subroutine toepliz_vet(v, n)
	integer n
	real v(-(n-1):(n-1))
	do i=-(n-1), n-1
		write(*,*)"Inserisci il valore all'indice ", i
		read(*,*)v(i)
	enddo
	end
	
	subroutine elem_eqd(x, n, a, b)
	integer n
	real x(n), a, b
	x(1)=a
	x(n)=b
	do i=2, n-1
		x(i)=(((n-i)*a)+((i-1)*b))/(n-1)
	enddo
	end
	