class Ingresso {
  double valor;
  int quantidadeVendas;

  Ingresso(this.valor, this.quantidadeVendas);

  void imprimeValor() {
    print('Valor do ingresso: \$${this.valor}');
  }
}

class VIP extends Ingresso {
  double valorAdicional;

  VIP(double valor, int quantidadeVendas, this.valorAdicional) : super(valor, quantidadeVendas);

  double valorIngressoVIP() {
    return this.valor + this.valorAdicional;
  }
}

class Normal extends Ingresso {
  Normal(double valor, int quantidadeVendas) : super(valor, quantidadeVendas);

  void imprime() {
    print('Ingresso Normal');
  }
}

class CamaroteInferior extends VIP {
  String localizacao;

  CamaroteInferior(double valor, int quantidadeVendas, double valorAdicional, this.localizacao) : super(valor, quantidadeVendas, valorAdicional);

  String getLocalizacao() {
    return this.localizacao;
  }

  void imprimeLocalizacao() {
    print('Localização do ingresso: ${this.localizacao}');
  }
}

class CamaroteSuperior extends VIP {
  double valorAdicionalCamarote;

  CamaroteSuperior(double valor, int quantidadeVendas, double valorAdicional, this.valorAdicionalCamarote) : super(valor, quantidadeVendas, valorAdicional);

  double valorIngresso() {
    return this.valor + this.valorAdicional + this.valorAdicionalCamarote;
  }
}
