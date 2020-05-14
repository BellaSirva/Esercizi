	program esercizio1

	integer n, fi, tmpi
	real fr, tmpr
	double precision fd, tmpd

	n=0
	fi=1
20	continue
		tmpi=fi
		n=n+1
		fi=fi*n
	if((fi/n).eq.tmpi)goto 20
	n=n-1
	write(*,*)"f(",n,")=",tmpi
	
      n=0
	fr=1
	tmpr=0
30	continue
		tmpr=fr
		n=n+1
		fr=fr*n
	if((fr/n).eq.tmpr)goto 30
	n=n-1
	write(*,*)"f(",n,")=",tmpr
	
      n=0
	fd=1
40	continue
		tmpd=fd
		n=n+1
		fd=fd*n
	if((fd/n).eq.tmpd)goto 40
	n=n-1
	write(*,*)"f(",n,")=",tmpd

	read(*,*)
	stop
	end
	