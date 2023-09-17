import 'package:flutter_bloc_theme/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppPreferences {
  Future<void> saveThemeMode(bool isDark);
  bool isDark();
}

class AppPreferencesImpl implements AppPreferences {
  final SharedPreferences _prefs;

  AppPreferencesImpl(this._prefs);

  @override
  saveThemeMode(bool isDark) async {
    await _prefs.setBool(AppConstants.darkTheme, isDark);
  }

  @override
  bool isDark() {
    return _prefs.getBool(AppConstants.darkTheme) ?? false;
  }

}
