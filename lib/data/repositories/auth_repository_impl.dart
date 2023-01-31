import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_project/data/utils/api_response.dart';
import 'package:dio_project/data/utils/dio_constants.dart';
import 'package:dio_project/domain/models/common/user.dart';
import 'package:dio_project/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<ApiResponse<String>> refreshToken(
    String currentToken,
  ) async {
    final dio = Dio(BaseOptions(
      validateStatus: (status) => true,
    ));
    final response = await dio.post("${DioConstants.baseUrl}/token/$currentToken");
    if (response.statusCode != HttpStatus.ok) {
      final message = response.data["message"];
      return ApiResponse(
        hasError: true,
        data: null,
        message: message,
      );
    }

    final user = User.fromJson(response.data["data"]);
    return ApiResponse(
      hasError: false,
      data: user.refreshToken,
      message: null,
    );
  }

  @override
  Future<ApiResponse<String>> signIn(
    String username,
    String password,
  ) async {
    final dio = Dio(BaseOptions(
      validateStatus: (status) => true,
    ));
    final response = await dio.post(
      "${DioConstants.baseUrl}/token",
      data: {
        "userName": username,
        "password": password,
      },
      options: Options(contentType: "application/json"),
    );
    if (response.statusCode != HttpStatus.ok) {
      final message = response.data["message"];
      return ApiResponse(
        hasError: true,
        data: null,
        message: message,
      );
    }

    final user = User.fromJson(response.data["data"]);
    return ApiResponse(
      hasError: false,
      data: user.refreshToken,
      message: null,
    );
  }

  @override
  Future<ApiResponse<String>> signUp(
    String email,
    String username,
    String password,
  ) async {
    final dio = Dio(
      BaseOptions(
        validateStatus: (status) => true,
      ),
    );
    final response = await dio.put(
      "${DioConstants.baseUrl}/token",
      data: {
        "email": email,
        "userName": username,
        "password": password,
      },
      options: Options(contentType: "application/json"),
    );
    if (response.statusCode != HttpStatus.ok) {
      final message = response.data["message"];
      return ApiResponse(
        hasError: true,
        data: null,
        message: message,
      );
    }
    return signIn(username, password);
  }
}
