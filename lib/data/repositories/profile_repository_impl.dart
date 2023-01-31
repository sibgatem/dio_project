import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_project/data/utils/api_response.dart';
import 'package:dio_project/data/utils/dio_constants.dart';
import 'package:dio_project/domain/models/common/user.dart';
import 'package:dio_project/domain/repositories/profile_repository.dart';
import 'package:dio_project/presentation/di/app_module.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<ApiResponse<User>> getProfile() async {
    final token = AppModule.getTokenHolder().apiToken;
    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    final response = await dio.get("${DioConstants.baseUrl}/user");
    print(response);
    if (response.statusCode != HttpStatus.ok) {
      final message = response.data["message"];
      return ApiResponse(
        hasError: true,
        data: null,
        message: message,
      );
    }
    print('user from data: ${response.data["data"]}');

    final user = User.fromJson(response.data);
    print('user: $user');
    return ApiResponse(
      hasError: false,
      data: user,
      message: null,
    );

  }
}
