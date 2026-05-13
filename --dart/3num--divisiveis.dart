import 'dart:io';

void main() {
  stdout.write("Digite o primer número: ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo número: ");
  int n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o terceiro número: ");
  int n3 = int.parse(stdin.readLineSync()!);

  int soma = (n1 + n2 + n3);

  print("A soma dos números $n1, $n2 e $n3 é $soma");

  if (soma % 3 == 0 && soma % 5 == 0) {
    print("Estes números são divisiveis por 3 e 5.");
  } else {
    print("Estes números não são divisiveis por 3 e 5.");
  }
}
