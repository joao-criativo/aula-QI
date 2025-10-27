void main() {
  Funcionario f = Funcionario(
    nome: "Astrogildo Ribeiro",
    telefone: "(51)983209711",
    email: "astro_ribeiro@gmail.com",
    cargo: "aux.seg.limp.gp.bimbo",
  );

  print(f);
}

// Exemplo de classes abstratas e herança
abstract class Pessoa {
  String? _email;
  String? _telefone;

  Pessoa({String email = "", String telefone = ""}) {
    this._email = email;
    this._telefone = telefone;
  }

  String? get email => this._email;
  String? get telefone => this._telefone;

  set email(String? valor) => this._email = valor;
  set telefone(String? valor) => this._telefone = valor;

  @override
  String toString() {
    return "Email: ${this._email}\nTelefone: ${this._telefone}\n";
  }
}

// Classe que vai herdar da classe Pessoa
class Funcionario extends Pessoa {
  String? _nome;
  String? _cargo;

  Funcionario({
    required String nome,
    required String telefone,
    String email = "",
    String cargo = "",
  }) : super(email: email, telefone: telefone) {
    this._nome = nome;
    this._cargo = cargo;
  }

  String? get nome => this._nome;
  String? get cargo => this._cargo;

  set nome(String? valor) => this._nome = valor;
  set cargo(String? valor) => this._cargo = valor;

  @override
  String toString() {
    return "Nome: ${this._nome}\n"
        "Cargo: ${this._cargo}\n"
        "Email: ${super.email}\n"
        "Telefone: ${super.telefone}\n";
  }
}
