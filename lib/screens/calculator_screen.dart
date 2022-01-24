import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final calcultatorController = Get.put(CalcultatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calcultatorController.resetAll(),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () =>
                      calcultatorController.changeNegativePositive(),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calcultatorController.deleteNumber(),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calcultatorController.selectOperation('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => calcultatorController.addNumber('7'),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => calcultatorController.addNumber('8'),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => calcultatorController.addNumber('9'),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calcultatorController.selectOperation('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => calcultatorController.addNumber('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => calcultatorController.addNumber('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => calcultatorController.addNumber('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calcultatorController.selectOperation('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => calcultatorController.addNumber('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => calcultatorController.addNumber('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => calcultatorController.addNumber('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calcultatorController.selectOperation('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => calcultatorController.addNumber('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => calcultatorController.addDecimalPoint(),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calcultatorController.doOperation(),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
