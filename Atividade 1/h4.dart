import 'dart:io'; 

void main() {
  
  stdout.write("Digite o número de horas trabalhadas ");
   int horasTrabalhadas = int.parse(stdin.readLineSync()!); 
  double salario = 0.0;
  double salarioExcedente = 0.0;

  if (horasTrabalhadas > 50) {
    salario = 50 * 10;
    salarioExcedente = (horasTrabalhadas - 50) * 20;
  } else {
    salario = horasTrabalhadas * 10;
  }

  print('O salário total é R\$${salario + salarioExcedente}.');
  print('O salário excedente é R\$${salarioExcedente}.');
}
