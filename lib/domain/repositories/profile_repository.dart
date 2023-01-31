import 'package:dio_project/data/utils/api_response.dart';
import 'package:dio_project/domain/models/common/user.dart';

abstract class ProfileRepository {
  Future<ApiResponse<User>> getProfile();
}
