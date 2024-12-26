import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tes_larina_bakery/service_api/repository/api_response_repository.dart';

import '../service_api/entity/api_response_entity.dart';
import '../service_api/service_main.dart';

class TugasDuaController extends GetxController {
  TextEditingController controllerSearch = TextEditingController();

  List<ApiResponseEntity> resData = [];
  List<ApiResponseEntity> tempList = [];

  //================== Service ======================
  final ApiRepository _apiService = ServiceMain();

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData(Get.context!);
    });

    super.onInit();
  }

  Future<void> getData(BuildContext context) async {
    var res = await _apiService.apiData(context, isLoading: true);

    if (res != null) {
      resData = res;
      tempList = res;
      update();
    }
  }

  // Fungsi untuk melakukan pencarian
  Future<void> search(String val) async {
    if (val.isNotEmpty) {
      resData = tempList
          .where((element) =>
              (element.doa != null && element.doa!.toLowerCase().contains(val.toLowerCase())) ||
              (element.latin != null && element.latin!.toLowerCase().contains(val.toLowerCase())) ||
              (element.artinya != null && element.artinya!.toLowerCase().contains(val.toLowerCase())))
          .toList();
    } else {
      resData = tempList;
    }

    update();
  }
}
