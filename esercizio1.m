n=int32(0);
f=int32(1);
tmp=int32(0);
do
  tmp=f;
	n++;
	f=f*n;
until((f/n)!=tmp);
n--;
printf("Il massimo fattoriale intero calcolabile è f(%d)=%d\n",n,tmp);
n=single(0);
f=single(1);
tmp=single(0);
do
  tmp=f;
  n++;
  f=f*n;
until((f/n)!=tmp);
n--;
printf("Il massimo fattoriale reale calcolabile è f(%d)=%f\n",n,tmp);
n=double(0);
f=double(1);
tmp=double(0);
do
  tmp=f;
  n++;
  f=f*n;
until((f/n)!=tmp);
n--;
printf("Il massimo fattoriale double calcolabile è f(%d)=%f\n",n,tmp);
