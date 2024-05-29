class Livro {
  String titulo;
  String autor;
  int numeroPaginas;
  bool _estaDisponivel = true;

  Livro(this.titulo, this.autor, this.numeroPaginas);

  void emprestar() {
    if (_estaDisponivel) {
      _estaDisponivel = false;
      print('O livro "$titulo" foi emprestado.');
    } else {
      print('O livro "$titulo" não está disponível para empréstimo');
    }
  }

  void devolver() {
    if (!_estaDisponivel) {
      _estaDisponivel = true;
      print('O livro" $titulo" "já esta disponível na biblioteca.');
    }
  }

  bool esta_Disponivel() {
    return _estaDisponivel;
  }
}

void main() {
  Livro livro = Livro('1984', 'George Orwell', 328);

  print(
      'O livro "${livro.titulo}" está disponível? ${livro.esta_Disponivel()}');

  livro.emprestar();

  livro.emprestar();

  livro.devolver();

  livro.devolver();

  print(
      'O livro "${livro.titulo}" está disponível? ${livro.esta_Disponivel()}');
}
