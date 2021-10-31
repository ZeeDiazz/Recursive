
void setup() {
  size(800, 800);

  println("Sum " + sum(20));
  println("Factorial num " + Factorial(4));

  //int textnum = sum(4);
  //print(textnum);
}

int Factorial (int n) {
  int current = 1;

  if (n > 0) {
    current = n * Factorial(n-1);
    return current;
  } else {

    return current;
  }
}

int sum(int n){
  if(n > 0) {
    println(n);
    rect(n * 30,20,20,20);
    return n + sum(n - 1);
  } else {
  return 0;
  }
}

/*int sum(int k) {
 if (k > 0) {
 println(k);
 rect(k*20, 20, 20, 20);
 return k + sum(k - 1);
 } else {
 return 0;
 }
 }*/
