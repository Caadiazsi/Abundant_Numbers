int numero_divisores (int n){
  int t =0;
  for(int i=1;i<=n;i++) {  
    if(n%i==0){ 
      t++;
    } 
  }
  return t-1;
}
int [] encuentra_divisores (int n) { 
  int t = numero_divisores (n);
  int [] d= new int[t]; 
  int c = 0;
  for(int i=1;i<=(n/2);i++) {  
    if(n%i==0){ 
      d[c] = i;
      c++;
    } 
  }
  return  d; 
}

int suma_divisores(int n) { 
   int [] a= encuentra_divisores(n);
   int t = numero_divisores(n);
   int x = 0;
   for(int i=0;i<=t-1;i++) {  
      x+=a[i];
  } 
return x;
}

void setup() {
  int n=12;
  //Hallamos el numero de divisores
  println(numero_divisores(n));
  //Encontramos los divisores
  println(encuentra_divisores(n));
  //Suma de los divisores
  println(suma_divisores(n));
 }