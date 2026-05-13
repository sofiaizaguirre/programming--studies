import 'dart:io';

void main() {
  stdout.write("Digite um primer número: ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite um segundo número: ");
  int n2 = int.parse(stdin.readLineSync()!);

  int soma = (n1 + n2);
  if (soma % 2 == 0) {
    print("A soma do $n1 e $n2 é $soma. Este número é par.");
  } else {
    print("A soma do $n1 e $n2 é $soma. Este número é impar.");
  }

  if (n1 > n2) {
    print("O primer número ($n1) é maior que o segundo ($n2).");
  } else {
    print("O segundo número ($n2) é maior que o primeiro ($n1).");
  }
}
