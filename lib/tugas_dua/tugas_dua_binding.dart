import 'package:get/get.dart';

import 'tugas_dua_controller.dart';

class TugasDuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TugasDuaController());
  }
}
