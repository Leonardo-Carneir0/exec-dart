int somaLista(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  return soma;
}

main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 29];
  int resultado = somaLista(numeros);
  print(resultado);
}
