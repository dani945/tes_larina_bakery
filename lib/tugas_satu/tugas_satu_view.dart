import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../i_text_field.dart';
import 'tugas_satu_controller.dart';

class TugasSatuView extends GetView<TugasSatuController> {
  const TugasSatuView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleHeader = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas 1"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _tugas1(context, textStyle: textStyleHeader),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tugas1(BuildContext context, {TextStyle? textStyle}) {
    SizedBox spacingHead = const SizedBox(
      height: 16,
    );
    SizedBox spacingBody = const SizedBox(
      height: 8,
    );
    return GetBuilder<TugasSatuController>(builder: (controller) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tugas 1",
            style: textStyle,
          ),
          spacingHead,
          ITextField.primary(
            label: "Deret Fibonacci",
            textInputAction: TextInputAction.done,
            controller: controller.controllerFibonaci,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              if (value.isNotEmpty) {
                controller.generateFibonacci(int.parse(value));
              } else {
                controller.clearFibonaci();
              }
            },
          ),
          spacingBody,
          Text(
            "Hasil : ${controller.hasilFibonaci.join(', ')}",
          ),
          spacingHead,
          spacingHead,
          const Text("mengurutkan array: "),
          Text("nilai awal = ${controller.myArray.join(', ')}"),
          Text("Hasil : ${controller.sortArray().join(', ')}"),
          spacingHead,
          spacingHead,
          ITextField.primary(
            label: "kalimat palindrom atau bukan",
            textInputAction: TextInputAction.done,
            controller: controller.controllerPalindrom,
            onChanged: (value) {
              if (value.isNotEmpty) {
                controller.isPalindrome(value);
              } else {
                controller.clearPalindrom();
              }
            },
          ),
          spacingBody,
          Text(
            "Hasil : ${controller.hasilPalindrom}",
          ),
        ],
      );
    });
  }
}
