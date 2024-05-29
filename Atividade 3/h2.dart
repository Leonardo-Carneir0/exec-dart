class Retangulo {
  int largura;
  int altura;

  Retangulo(this.largura, this.altura);

  int area() {
    return largura * altura;
  }

  int perimetro() {
    return (largura * 2) + (altura * 2);
  }
}

void main() {
  Retangulo retangulo = Retangulo(24, 23);
  print(retangulo.area());
  print(retangulo.perimetro());
}
