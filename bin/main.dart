import 'dart:io';

void main() {
  var firstList = [];
  var secondList = [];
  var input;
  var qntdInput;
  int num;
  int i;

  print("Digite a qtd de numeros de entrada: ");
  qntdInput = stdin.readLineSync();
  i = int.parse(qntdInput);

  while (i > 0) {
    print("Digite um numero inteiro: ");
    input = stdin.readLineSync();
    num = int.parse(input);

    if (num >= -1000 && num <= 1000) {
      firstList.add(int.parse(input));
    } else {
      firstList.add(num);
    }
    --i;
  }
  for (i = 0; i < firstList.length; i++) {
    if (!secondList.contains(firstList[i])) {
      secondList.add(firstList[i]);
    }
  }
  secondList.sort();
  print("Ordenacao: ${secondList}");
}
