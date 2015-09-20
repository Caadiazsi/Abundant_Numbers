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
  int [] d= new int[t+1]; 
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

boolean abundant (int n) { 
  boolean t;
  int x= suma_divisores (n);
  if (n<x){
    t=true;
  }else{
    t=false;
  }
  if(n==0||n==1||n==2)
  t=false;
  return t; 
} 

void Abundant_numbers(int n){
 int i=0;
 int e=0;
 while (e<=n-1){
   if (abundant(i)==true){
     println(i);
     e++;
   }
   i++;
 }
}

void setup() {
  int n=12;
  //Hallamos el numero de divisores
  println(numero_divisores(n));
  //Encontramos los divisores
  println(encuentra_divisores(n));
  //Suma de los divisores
  println(suma_divisores(n));
  //Miramos si un numero n es abundante
  println(abundant(n));
  //Imprimimos los primeros n numeros abundantes
  Abundant_numbers(n);
 }