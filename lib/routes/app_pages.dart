import 'package:get/get.dart';
import 'package:tes_larina_bakery/page_view/page_view_binding.dart';
import 'package:tes_larina_bakery/page_view/page_view_view.dart';
import 'package:tes_larina_bakery/tugas_satu/tugas_satu_binding.dart';
import 'package:tes_larina_bakery/tugas_satu/tugas_satu_view.dart';

import '../tugas_dua/tugas_dua_binding.dart';
import '../tugas_dua/tugas_dua_view.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.main;

  static final pages = [
    GetPage(
      name: AppRoutes.main,
      page: () => const PageViewView(),
      binding: PageViewBinding(),
    ),
    GetPage(
      name: AppRoutes.tugasSatu,
      page: () => const TugasSatuView(),
      binding: TugasSatuBinding(),
    ),
    GetPage(
      name: AppRoutes.tugasDua,
      page: () => const TugasDuaView(),
      binding: TugasDuaBinding(),
    ),
  ];
}
