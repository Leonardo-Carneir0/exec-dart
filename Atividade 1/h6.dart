void main() {
  int soma = List.generate(100, (i) => i + 1).reduce((a, b) => a + b);
  print("A soma dos números de 1 a 100 é: $soma");
}
