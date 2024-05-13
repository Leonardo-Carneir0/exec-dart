import 'dart:io';

void main() {
  stdout.write("Digite um número para a tabuada: ");
  int numero = int.parse(stdin.readLineSync()!);
  printTabuada(numero);
}

void printTabuada(int numero) {
  List.generate(10, (i) => i + 1).forEach((n) => stdout.writeln("$numero x $n = ${multiplica(numero, n)}"));
}

int multiplica(int a, int b) => a * b;