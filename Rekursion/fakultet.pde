int Factorial (int n) {
  int current = 1;

  if (n > 0) {
    current = n * Factorial(n-1);
    return current;
  } else {

    return current;
  }
}
