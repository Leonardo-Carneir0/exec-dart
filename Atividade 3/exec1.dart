class BombaCombustivel {
  String tipoCombustivel;
  double valorLitro;
  double quantidadeCombustivel;

  BombaCombustivel(
      this.tipoCombustivel, this.valorLitro, this.quantidadeCombustivel);

  void alterarQuantidadeCombustivel(double quantidade) {
    quantidadeCombustivel += quantidade;
    print('Quantidade de combustível na bomba alterada para: $quantidadeCombustivel litros');
  }

  void adicionarCombustivel(double Combustiveladd){
    quantidadeCombustivel += Combustiveladd;

  }

  void abastecerPorValor(double valor) {
    double litros = valor / valorLitro;
    if (litros <= quantidadeCombustivel) {
      quantidadeCombustivel -= litros;
      print('Abastecido $litros litros de $tipoCombustivel');
    } else {
      print('Combustível insuficiente na bomba');
    }
  }

  void abastecerPorLitro(double litros) {
    double valor = litros * valorLitro;
    if (litros <= quantidadeCombustivel) {
      quantidadeCombustivel -= litros;
      print('Abastecido $litros litros de $tipoCombustivel por \$ $valor');
    } else {
      print('Combustível insuficiente na bomba');
    }
  }

  void alterarValor(double novoValor) {
    valorLitro = novoValor;
    print('Novo valor do litro: \$ $valorLitro');
  }

  void alterarCombustivel(String novoTipo) {
    tipoCombustivel = novoTipo;
    print('Novo tipo de combustível: $tipoCombustivel');
  }


}

void main() {
  // Criando um objeto da classe BombaCombustivel
  var bomba = BombaCombustivel('Gasolina', 5.49, 1000.0);
  bomba.alterarQuantidadeCombustivel(0);
  bomba.abastecerPorValor(60.0);
  bomba.alterarQuantidadeCombustivel(0);
  bomba.adicionarCombustivel(99999);
  bomba.alterarQuantidadeCombustivel(0);

}
