import 'package:dio_project/domain/repositories/auth_repository.dart';
import 'package:dio_project/domain/repositories/preferences_repository.dart';
import 'package:dio_project/presentation/di/app_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  AuthRepository authRepository;

  PreferencesRepositoryImpl({required this.authRepository});

  @override
  Future<String?> restoreSavedApiToken() async {
    final prefs = await SharedPreferences.getInstance();
    final savedApiToken = prefs.getString("token");
    if (savedApiToken != null) {
      final token = await authRepository.refreshToken(savedApiToken);
      if (token.data == null) {
        await removeSavedApiToken();
        return null;
      }
      AppModule.getTokenHolder().apiToken = token.data!;
      await saveApiToken(token.data!);
      return token.data!;
    }
    return savedApiToken;
  }

  @override
  Future<void> saveApiToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }

  @override
  Future<void> removeSavedApiToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
  }
}
