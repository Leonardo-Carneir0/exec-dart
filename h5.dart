import 'dart:io';

void main() {
  stdout.write("Digite um número para verificar se é primo: ");
  int numero = int.parse(stdin.readLineSync()!);
  List<int> divisores = encontreDivisores(numero);
  if (divisores.isEmpty) {
    print("O número $numero é primo.");
  } else {
    print("O número $numero não é primo e é divisível por ${divisores.join(', ')}.");
  }
}

List<int> encontreDivisores(int numero) {
  List<int> divisores = [];
  for (int i = 2; i < numero; i++) {
    if (numero % i == 0) {
      divisores.add(i);
    }
  }
  return divisores;
}
