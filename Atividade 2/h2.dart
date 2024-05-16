int maiorNumero(List<int> numeros) {
  int maior = numeros[0];
  for (int numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }
  }
  return maior;
}

void main() {
  List<int> listaNumeros = [1, 2, 3, 45, 454, 645, 6746];
  print('Maior número: ${maiorNumero(listaNumeros)}');
}
