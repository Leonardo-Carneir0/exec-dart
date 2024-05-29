int encontrarMaiorNumero(List<int> listaDeNumeros) {
  int maiorNumero = listaDeNumeros[0];

  for (int numeroAtual in listaDeNumeros) {
    if (numeroAtual > maiorNumero) {
      maiorNumero = numeroAtual;
    }
  }

  return maiorNumero;
}

void main() {
  List<int> numeros = [1, 2, 3, 45, 454, 645, 6746];
  print('Maior número: ${encontrarMaiorNumero(numeros)}');
}
