import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);
  final calcultatorController = Get.find<CalcultatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: calcultatorController.firstNumber.value),
            SubResult(text: calcultatorController.operation.value),
            SubResult(text: calcultatorController.secondNumber.value),
            LineSeparator(),
            MainResultText(text: calcultatorController.mathResult.value),
          ],
        ));
  }
}
