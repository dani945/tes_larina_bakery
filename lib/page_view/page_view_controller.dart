import 'package:get/get.dart';
import 'package:tes_larina_bakery/routes/app_routes.dart';

class PageViewController extends GetxController {
  void toTugasSatu() {
    Get.toNamed(AppRoutes.tugasSatu);
  }

  void toTugasDua() {
    Get.toNamed(AppRoutes.tugasDua);
  }
}
