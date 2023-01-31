import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_project/data/utils/dio_constants.dart';
import 'package:dio_project/domain/models/common/operation_category.dart';
import 'package:dio_project/domain/repositories/categories_repository.dart';
import 'package:dio_project/presentation/di/app_module.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  @override
  Future<List<OperationCategory>> getAll() async {
    final token = AppModule.getTokenHolder().apiToken;
    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    final response = await dio.get("${DioConstants.baseUrl}/category");
    print(response);
    if (response.statusCode != HttpStatus.ok) {
      return [];
    }

    final jsonList = response.data as List<dynamic>;
    return jsonList.map((e) => OperationCategory.fromJson(e)).toList();
  }
}
