import 'dart:io';

void main() {
  final entrada = obterEntrada();
  final precoOriginal = entrada[0];
  final desconto = entrada[1];

  final precoFinal = calcularPrecoFinal(precoOriginal, desconto);

  mostrarResultado(precoFinal);
}

List<double> obterEntrada() {
  while (true) {
    try {
      stdout.write('Digite o preço original do produto e a porcentagem de desconto, separados por uma vírgula: ');
      final entrada = stdin.readLineSync()!.split(',').map((e) => double.parse(e)).toList();

      if (entrada.length != 2) {
        throw FormatException('Você deve fornecer exatamente dois valores separados por vírgula.');
      }

      if (entrada[1] >= 100) {
        throw ArgumentError('A porcentagem de desconto não pode ser maior ou igual a 100%.');
      }

      return entrada;
    } on FormatException catch (e) {
      print('Erro de formato: $e');
      print('Por favor, forneça dois valores separados por vírgula.\n');
    } on ArgumentError catch (e) {
      print('Erro de argumento: $e');
      print('Por favor, forneça uma porcentagem de desconto válida.\n');
    } catch (e) {
      print('Ocorreu um erro: $e');
      print('Por favor, tente novamente.\n');
    }
  }
}

double calcularPrecoFinal(double precoOriginal, double desconto) {
  return precoOriginal - (precoOriginal * desconto / 100);
}

void mostrarResultado(double precoFinal) {
  print('O preço final do produto após o desconto é: \$${precoFinal.toStringAsFixed(2)}');
}
