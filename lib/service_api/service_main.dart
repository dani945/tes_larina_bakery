import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tes_larina_bakery/service_api/entity/api_response_entity.dart';
import 'package:tes_larina_bakery/service_api/repository/api_response_repository.dart';

import '../showdialog_loading.dart';

final dio = Dio();

class ServiceMain implements ApiRepository {
  @override
  Future<List<ApiResponseEntity>?> apiData(BuildContext context, {bool isLoading = false}) async {
    try {
      if (isLoading) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
          await ShowdialogLoading.showLoading(context);
        });
      }

      Response response = await dio.get('https://doa-doa-api-ahmadramadhan.fly.dev/api');
      if (response.statusCode == 200) {
        await Future.delayed(const Duration(seconds: 1));
        if (isLoading) {
          if (context.mounted) {
            Navigator.pop(context);
            isLoading = false;
          }
        }
      }

      List<ApiResponseEntity> dataGet = [];
      dataGet.clear();
      for (var i = 0; i < response.data.length; i++) {
        dataGet.add(ApiResponseEntity.fromJson(response.data[i]));
      }
      return dataGet;
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        isLoading = false;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error : $e'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
      return null;
    }
  }
}
