void main() {
  // Criando o cliente
  Cliente cli = Cliente(
    nome: "Paulo Donini",
    cpf: "123.456.789-10",
    senha: "123",
    cep: "94410-530",
  );

  print(cli); // usa toString()

  // Tentativa de login
  bool logado = cli.fazerLogin(cpf: "123.456.789-10", senha: "123");
  if (logado) {
    print("Login realizado com sucesso!");
  } else {
    print("CPF ou senha incorretos.");
  }

  // Alterando dados via setters
  cli.nome = "Paulo D. Silva";
  print("Nome atualizado: ${cli.nome}");
}

class Cliente {
  // Atributos privados
  String? _nome;
  String? _cpf;
  String? _nascimento;
  String? _cep;
  String? _senha;

  // Construtor
  Cliente({
    required String nome,
    required String cpf,
    String nascimento = "",
    String cep = "",
    required String senha,
  }) {
    _nome = nome;
    _cpf = cpf;
    _nascimento = nascimento;
    _cep = cep;
    _senha = senha;
  }

  // Métodos
  bool fazerLogin({required String cpf, required String senha}) {
    return _cpf == cpf && _senha == senha;
  }

  // Getters
  String? get nome => _nome;
  String? get cpf => _cpf;
  String? get nascimento => _nascimento;
  String? get cep => _cep;
  String? get senha => _senha;

  // Setters
  set nome(String? valor) => _nome = valor;
  set cpf(String? valor) => _cpf = valor;
  set nascimento(String? valor) => _nascimento = valor;
  set cep(String? valor) => _cep = valor;
  set senha(String? valor) => _senha = valor;

  // Sobrescrevendo toString() para exibir informações do cliente
  @override
  String toString() {
    return "Cliente: $_nome | CPF: $_cpf | Nascimento: $_nascimento | CEP: $_cep";
  }
}
