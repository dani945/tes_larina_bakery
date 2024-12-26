import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_larina_bakery/context_extention.dart';

import '../i_text_field.dart';
import 'tugas_dua_controller.dart';

class TugasDuaView extends GetView<TugasDuaController> {
  const TugasDuaView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TugasDuaController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tugas 2"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: ITextField.primary(
                label: "",
                hintText: "Pencarian...",
                textInputAction: TextInputAction.done,
                controller: controller.controllerSearch,
                onChanged: (value) {
                  controller.search(value);
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) {
                  final data = controller.resData[index];
                  return _bodyWidget(
                    context,
                    doa: data.doa ?? "",
                    ayat: data.ayat ?? "",
                    latin: data.latin ?? "",
                    artinya: data.artinya ?? "",
                  );
                },
                separatorBuilder: (context, index) => context.sbHeight(8),
                itemCount: controller.resData.length,
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _bodyWidget(
    BuildContext context, {
    required String doa,
    required String ayat,
    required String latin,
    required String artinya,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textWidget(title: "Doa", value: doa),
            context.sbHeight(8),
            _textWidget(title: "Ayat", value: ayat),
            context.sbHeight(8),
            _textWidget(title: "Latin", value: latin),
            context.sbHeight(8),
            _textWidget(title: "Artinya", value: artinya),
          ],
        ),
      ),
    );
  }

  Widget _textWidget({required String title, required String value}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(value),
      ],
    );
  }
}
