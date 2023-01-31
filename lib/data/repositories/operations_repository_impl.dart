import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_project/data/utils/dio_constants.dart';
import 'package:dio_project/domain/models/common/bank_operation.dart';
import 'package:dio_project/domain/repositories/bank_operations_repository.dart';
import 'package:dio_project/presentation/di/app_module.dart';

class BankOperationsRepositoryImpl implements BankOperationsRepository {
  @override
  Future<List<BankOperation>> getAll() async {
    final token = AppModule.getTokenHolder().apiToken;
    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    final response = await dio.get("${DioConstants.baseUrl}/operation");
    if (response.statusCode != HttpStatus.ok) {
      return [];
    }

    final jsonList = response.data as List<dynamic>;
    return jsonList.map((e) => BankOperation.fromJson(e)).toList();
  }
}
