import 'package:flutter/material.dart';
import 'package:dio_project/domain/repositories/preferences_repository.dart';
import 'package:dio_project/presentation/di/app_module.dart';
import 'package:dio_project/presentation/screens/categories_screen.dart';
import 'package:dio_project/presentation/screens/profile_screen.dart';
import 'package:dio_project/presentation/screens/sign_in_screen.dart';
import 'package:dio_project/presentation/screens/sign_up_screen.dart';
import 'package:dio_project/presentation/screens/bank_operations_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppModule().provideDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late PreferencesRepository _preferencesRepository;

  MyApp({super.key}) {
    _preferencesRepository = AppModule.getPreferencesRepository();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _preferencesRepository.restoreSavedApiToken(),
        builder: (context, token) {
          if (token.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            builder: (context, navigator) {
              return Overlay(
                initialEntries: [
                  OverlayEntry(
                    builder: (context) {
                      return Scaffold(
                        body: SafeArea(child: navigator!),
                      );
                    },
                  ),
                ],
              );
            },
            routes: {
              '/sign-in': (_) => SignInScreen(),
              '/sign-up': (_) => SignUpScreen(),
              '/profile': (_) => const ProfileScreen(),
              '/categories': (_) => const CategoriesScreen(),
              '/transactions': (_) => const TransactionsScreen(),
            },
            initialRoute: token.data == null ? "/sign-in" : "/profile",
          );
        });
  }
}
