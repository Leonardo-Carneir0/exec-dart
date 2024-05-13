import 'dart:io';

void main() {
  print(
      'Digite o valor inicial, a taxa de juros (em porcentagem) e o tempo (em anos), separados por uma vírgula:');
  List<String> entrada = stdin.readLineSync()!.split(',');

  double valorInicial = double.parse(entrada[0]);
  double taxaJuros = double.parse(entrada[1]);
  double tempo = double.parse(entrada[2]);

  double montanteFinal = calcularMontanteFinal(valorInicial, taxaJuros, tempo);

  print(
      'O montante final após a aplicação de juros simples é: R\$${montanteFinal.toStringAsFixed(2)}');
}

double calcularMontanteFinal(
    double valorInicial, double taxaJuros, double tempo) {
  return valorInicial * (1 + (taxaJuros / 100) * tempo);
}
