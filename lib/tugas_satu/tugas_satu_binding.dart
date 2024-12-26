import 'package:get/get.dart';
import 'package:tes_larina_bakery/tugas_satu/tugas_satu_controller.dart';

class TugasSatuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TugasSatuController());
  }
}
