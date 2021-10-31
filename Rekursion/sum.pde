
int sum(int n){
  if(n > 0) {
    println(n);
    rect(n * 30,20,20,20);
    return n + sum(n - 1);
  } else {
  return 0;
  }
}
