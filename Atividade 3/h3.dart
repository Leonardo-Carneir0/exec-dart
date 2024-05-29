class Pais {
  String codigoISO;
  String nome;
  int populacao;
  double dimensao;

  Pais(
      {required this.codigoISO,
      required this.nome,
      this.populacao = 0,
      this.dimensao = -1});

  bool isEqual(Pais outroPais) {
    return this.codigoISO == outroPais.codigoISO;
  }

  double densidadePopulacional() {
    if (dimensao > 0) {
      return populacao / dimensao;
    } else {
      return 0;
    }
  }
}

void main() {
  var brasil = Pais(
      codigoISO: 'BRA',
      nome: 'Brasil',
      populacao: 193946886,
      dimensao: 8515767.049);
  var argentina = Pais(
      codigoISO: 'ARG',
      nome: 'Argentina',
      populacao: 44271041,
      dimensao: 2780400);
  var brasil2 = Pais(codigoISO: 'BRA', nome: 'Brasil');

  print(brasil.isEqual(argentina));
  print(brasil.densidadePopulacional());
  print(argentina.densidadePopulacional());
  print(brasil2.densidadePopulacional());
}
