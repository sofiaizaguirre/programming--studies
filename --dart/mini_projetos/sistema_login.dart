import 'dart:io';

void main() {
  print("--Sistema de login--");

  //Dados básicos.
  stdout.write("Digite o seu nome completo: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite o dia do seu aniversario: ");
  int dia = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o mes do seu aniversario: ");
  int mes = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o ano do seu aniversario: ");
  int ano = int.parse(stdin.readLineSync()!);

  String aniversario = "$dia/$mes/$ano";

  print("Dados guardados, Nome: $nome, Nascimento: $aniversario");
  print("Crie seu login: ");

  //Gmail e senha

  //Gmail
  stdout.write("Digite aqui o seu melhor gmail: ");
  String gmail = stdin.readLineSync()!;

  //----Verificação de gmail----
  bool temArroba = gmail.contains(RegExp("@"));
  bool temCom = gmail.endsWith(".com");

  while (!temArroba || !temCom) {
    print("Gmail negado. Tente novamente");

    if (!temArroba) {
      print("- O gmail deve conter @");
    }

    if (!temCom) {
      print("- O gmail deve terminar com .com");
    }

    gmail = stdin.readLineSync()!;

    temArroba = gmail.contains("@");
    temCom = gmail.endsWith(".com");
  }

  print("Gmail cadastrado com sucesso!");

  //Senha
  stdout.write("Digite a sua senha: ");
  String senha = stdin.readLineSync()!;

  bool tem8Caracteres = senha.length >= 8;
  bool temMaiuscula = senha.contains(RegExp(r'[A-Z]'));
  bool temEspecial = senha.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));

  while (!tem8Caracteres ||
      !temMaiuscula ||
      !temEspecial ||
      senha == nome ||
      senha == aniversario) {
    print("Senha inválida!");

    if (!tem8Caracteres) {
      print("- A senha deve ter pelo menos 8 caracteres.");
    }

    if (!temMaiuscula) {
      print("- A senha deve conter letra maiúscula.");
    }

    if (!temEspecial) {
      print("- A senha deve conter caractere especial.");
    }

    if (senha == nome || senha == aniversario) {
      print("- A senha não pode ser igual ao nome ou aniversário.");
    }

    stdout.write("Digite outra senha: ");
    senha = stdin.readLineSync()!;

    // atualiza as verificações
    tem8Caracteres = senha.length >= 8;
    temMaiuscula = senha.contains(RegExp(r'[A-Z]'));
    temEspecial = senha.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  }

  print("Cadastro realizado com sucesso!");
}
