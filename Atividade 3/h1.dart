class Conta {
  String Nconta;
  String NomeDoDono;
  int saldo;

  Conta(this.Nconta, this.NomeDoDono, {this.saldo = 0});

  void depositar(int deposito, int Nconta) {
    saldo = saldo + deposito;
    print('saldo atual da conta $NomeDoDono é $saldo');
  }

  void saque(int saque, int Nconta) {
    saldo = -saque + saldo;
    print('saldo atual da conta $NomeDoDono é $saldo');
  }
}

void main() {
  Conta conta = Conta('2', 'test', saldo: 321);

  conta.depositar(231312321, 2);
}
