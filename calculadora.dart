import 'dart:io';

void main() {
  stdout.write('Digite seu peso em quilogramas: ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura em metros: ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = calcularIMC(peso, altura);
  String resultado = interpretarIMC(imc);

  print('Seu IMC é: $imc');
  print('Resultado: $resultado');
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String interpretarIMC(double imc) {
  if (imc < 18.5) {
    return 'Abaixo do peso';
  } else if (imc < 24.9) {
    return 'Peso normal';
  } else if (imc < 29.9) {
    return 'Sobrepeso';
  } else if (imc < 34.9) {
    return 'Obesidade grau 1';
  } else if (imc < 39.9) {
    return 'Obesidade grau 2';
  } else {
    return 'Obesidade grau 3';
  }