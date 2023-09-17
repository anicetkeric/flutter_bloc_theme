import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_theme/data/services/app_preferences.dart';
import 'package:flutter_bloc_theme/data/services/service_locator.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(super.initialState);

  final prefs = getIt<AppPreferences>();

  changeTheme(bool val) {
    if (prefs.isDark()) {
      prefs.saveThemeMode(false);
      emit(ThemeMode.light);
    } else {
      prefs.saveThemeMode(true);
      emit(ThemeMode.dark);
    }
  }
}
