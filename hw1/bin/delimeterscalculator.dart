class DelimeterScalculator {

  int nod(int a,int b) {
  if (a < b) {
    int c = a;
    a=b;
    b=c;

  }

  while (b>0) {
    a %= b;
    int c = a;
    a=b;
    b=c;
  }

  return a;
}
  int nok(int a, int b) {
    return (a/nod(a,b)*b).toInt();
  }

  void factorize(int n,int k)
  {
    if (k>n) return;
    if (n%k==0)
    {
      print(k);
      while(n%k==0)
      {
        n=n~/k;
      }
    }
    factorize(n,k+1);
  }




}