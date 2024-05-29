int contaVogais(String s) {
  int contador = 0;
  String vogais = 'aeiouAEIOU';

  for (int i = 0; i < s.length; i++) {
    if (vogais.contains(s[i])) {
      contador++;
    }
  }

  return contador;
}
void main (){
  print(contaVogais("Eu amo voce"));
}