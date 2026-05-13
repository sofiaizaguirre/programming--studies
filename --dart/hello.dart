import 'dart:io';

void main() {
  stdout.write("Digite o seu nome: ");
  String nome = stdin.readLineSync()!;

  print("Hello, $nome!");
}
