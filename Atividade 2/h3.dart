int fatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * fatorial(n - 1);
}

void main(){  
  int numeroFatorial = 20;
  print('Fatorial de $numeroFatorial: ${fatorial(numeroFatorial)}');
}