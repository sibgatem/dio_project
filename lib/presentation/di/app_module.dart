import 'package:get_it/get_it.dart';
import 'package:dio_project/data/repositories/auth_repository_impl.dart';
import 'package:dio_project/data/repositories/categories_repository_impl.dart';
import 'package:dio_project/data/repositories/preferences_repository_impl.dart';
import 'package:dio_project/data/repositories/profile_repository_impl.dart';
import 'package:dio_project/data/repositories/operations_repository_impl.dart';
import 'package:dio_project/domain/repositories/auth_repository.dart';
import 'package:dio_project/domain/repositories/categories_repository.dart';
import 'package:dio_project/domain/repositories/preferences_repository.dart';
import 'package:dio_project/domain/repositories/profile_repository.dart';
import 'package:dio_project/domain/repositories/bank_operations_repository.dart';
import 'package:dio_project/presentation/di/token_holder.dart';

class AppModule {
  static bool _provided = false;

  void provideDependencies() {
    if (_provided) return;

    _provideTokenHolder();
    _provideAuthRepository();
    _provideProfileRepository();
    _provideCategoriesRepository();
    _provideBankOperationsRepository();
    _providePreferencesRepository();

    _provided = true;
  }

  void _provideTokenHolder() {
    GetIt.instance.registerSingleton(TokenHolder());
  }

  static TokenHolder getTokenHolder() {
    return GetIt.instance.get<TokenHolder>();
  }

  void _provideAuthRepository() {
    GetIt.instance.registerSingleton(AuthRepositoryImpl());
  }

  static AuthRepository getAuthRepository() {
    return GetIt.instance.get<AuthRepositoryImpl>();
  }

  void _provideProfileRepository() {
    GetIt.instance.registerSingleton(ProfileRepositoryImpl());
  }

  static ProfileRepository getProfileRepository() {
    return GetIt.instance.get<ProfileRepositoryImpl>();
  }

  void _provideCategoriesRepository() {
    GetIt.instance.registerSingleton(CategoriesRepositoryImpl());
  }

  static CategoriesRepository getCategoriesRepository() {
    return GetIt.instance.get<CategoriesRepositoryImpl>();
  }

  void _provideBankOperationsRepository() {
    GetIt.instance.registerSingleton(BankOperationsRepositoryImpl());
  }

  static BankOperationsRepository getTransactionsRepository() {
    return GetIt.instance.get<BankOperationsRepositoryImpl>();
  }

  void _providePreferencesRepository() {
    final authRepository = getAuthRepository();
    GetIt.instance.registerSingleton(
      PreferencesRepositoryImpl(
        authRepository: authRepository,
      ),
    );
  }

  static PreferencesRepository getPreferencesRepository() {
    if (!_provided) throw Exception("Value not provided");
    return GetIt.instance.get<PreferencesRepositoryImpl>();
  }
}
