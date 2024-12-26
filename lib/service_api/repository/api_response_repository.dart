import 'package:flutter/widgets.dart';

import '../entity/api_response_entity.dart';

abstract class ApiRepository {
  Future<List<ApiResponseEntity>?> apiData(
    BuildContext context, {
    bool isLoading = false,
  });
}
