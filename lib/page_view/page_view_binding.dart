import 'package:get/get.dart';

import 'page_view_controller.dart';

class PageViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PageViewController());
  }
}
