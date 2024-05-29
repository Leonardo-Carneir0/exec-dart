bool verificarPalindromo(String palavra) {
  // Remove espaços e converte para minúsculas
  String formatado = palavra.replaceAll(' ', '').toLowerCase();

  // Compara a string formatada com sua versão invertida
  return formatado == formatado.split('').reversed.join();
}

void main() {
  print(verificarPalindromo('A mamãe ama'));
  print(verificarPalindromo('Dart'));
}
