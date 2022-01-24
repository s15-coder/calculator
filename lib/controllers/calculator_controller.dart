import 'package:get/get.dart';

class CalcultatorController extends GetxController {
  var firstNumber = "10".obs;
  var secondNumber = "10".obs;
  var mathResult = "20".obs;
  var operation = "+".obs;
  void resetAll() {
    firstNumber.value = "0";
    secondNumber.value = "0";
    mathResult.value = "0";
    operation.value = "+";
  }

  void changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.replaceAll('-', '');
    } else {
      mathResult.value = '-${mathResult.value}';
    }
  }

  void addNumber(String number) {
    if (mathResult.value == "0") {
      mathResult.value = number;
      return;
    }
    if (mathResult.value == "-0") {
      mathResult.value = '-$number';
      return;
    }
    mathResult.value += number;
  }

  void addDecimalPoint() {
    if (mathResult.contains('.')) return;
    mathResult.value = '$mathResult.';
  }

  void selectOperation(String operationParam) {
    operation.value = operationParam;
    firstNumber.value = mathResult.value;
    secondNumber.value = "0";
    mathResult.value = "0";
  }

  void deleteNumber() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = "0";
    }
    //My way
    //   if (mathResult.value == "-0" || mathResult.value == '0') return;
    //   if (mathResult.value.length == 1) {
    //     mathResult.value = '0';
    //     return;
    //   }
    //   if (mathResult.startsWith('-') && mathResult.value.length == 2) {
    //     mathResult.value = '-0';
    //     return;
    //   }
    //   mathResult.value =
    //       mathResult.value.substring(0, mathResult.value.length - 1);
    // }
  }

  void doOperation() {
    var num1 = double.parse(firstNumber.value);
    var num2 = double.parse(mathResult.value);
    secondNumber.value = mathResult.value;

    switch (operation.value) {
      case "+":
        mathResult.value = '${num1 + num2}';
        break;
      case "-":
        mathResult.value = '${num1 - num2}';

        break;
      case "/":
        mathResult.value = '${num1 / num2}';

        break;
      case "*":
        mathResult.value = '${num1 * num2}';

        break;
      default:
    }
    if (mathResult.value.endsWith('.0')) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 2);
    }
  }
}
