int numero_divisores (int n){
  int t =0;
  for(int i=1;i<=n;i++) {  
    if(n%i==0){ 
      t++;
    } 
  }
  return t;
}
int [] encuentra_divisores (int n) { 
  int t = numero_divisores (n);
  int [] d= new int[t-1]; 
  int c = 0;
  for(int i=1;i<=(n/2);i++) {  
    if(n%i==0){ 
      d[c] = i;
      c++;
    } 
  }
  return  d; 
}

void setup() {
  int n=12;
  //Hallamos el numero de divisores y los divisores de n.
  println(numero_divisores(12));
  println(encuentra_divisores(12));
 }