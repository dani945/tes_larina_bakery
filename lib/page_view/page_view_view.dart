import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_larina_bakery/context_extention.dart';

import 'page_view_controller.dart';

class PageViewView extends GetView<PageViewController> {
  const PageViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tes Larina"),
        centerTitle: true,
      ),
      body: GetBuilder<PageViewController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: context.mQWidth(1),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.toTugasSatu();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Warna latar belakang
                      foregroundColor: Colors.white, // Warna teks
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: const Text('Tugas 1'),
                  ),
                ),
                context.sbHeight(32),
                SizedBox(
                  width: context.mQWidth(1),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.toTugasDua();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Warna latar belakang
                      foregroundColor: Colors.white, // Warna teks
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: const Text('Tugas 2'),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
