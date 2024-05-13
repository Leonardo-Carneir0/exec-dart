import 'dart:math';

void main() {
  var rng = new Random();
  int soma = 0;
  int contador = 0;
  while (true) {
    int num = 10 + rng.nextInt(31);
    soma += num;
    contador++;
    if (num == 25) {
      break;
    }
  }
  print('Foram gerados $contador números.');
  print('A soma dos números gerados é $soma.');
}
