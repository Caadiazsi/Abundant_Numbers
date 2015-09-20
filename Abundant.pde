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
  int x = suma_divisores (n);
  println("Abundant Numbers");
  println("Respuestas dadas para n=");
  println(n);
  //Los n primeros numeros abundantes.
  println("Los primeros n numeros abundantes son:");
  Abundant_numbers(n);
  /*Determina si n es un numero abundante
  Ademas le otorga datos como:
  Los divisores.
  La suma de los divisores.
  La abundancia. 
  */
  println("Es'n'un numero abundante?");
  println("Rta//");
  println(abundant(n));
  println("Los divisores son:");
  println(encuentra_divisores(n));
  println("La suma de los divisores es de");
  println(suma_divisores(n));
  if(n<=x){
    println("La abundancia es de ");
    println(x-n);
  }else{
    println("EL numero n es mayor");
    println(n-x);
    println("unidades que la suma de sus divisores, por lo tanto, no es un numero abundante.");
  }
 }