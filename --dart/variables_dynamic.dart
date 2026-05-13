import 'dart:io';

void main() {
  stdout.write("Digite o seu nome: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("$nome, bemvindo ao sistema!");
  if (idade >= 18) {
    print("Você tem $idade anos, é maior de idade. Seu login foi autorizado");
  } else {
    print(
      "Você tem $idade anos, não é maior de idade. Seu login foi reprovado.");
  }
}
