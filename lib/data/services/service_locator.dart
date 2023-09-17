import 'package:flutter/material.dart';
import 'package:flutter_bloc_theme/data/logic/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'dart:developer' as developer;

import 'package:shared_preferences/shared_preferences.dart';

import 'app_preferences.dart';

final getIt = GetIt.instance;

setupLocator() async {
  Stopwatch stopwatch = Stopwatch()..start();

  await initSetup();

  developer.log('Locator setup took ${stopwatch.elapsedMilliseconds} ms');
  stopwatch.stop();
}


initSetup() async {
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<AppPreferences>(() => AppPreferencesImpl(prefs));


  final isDark = getIt<AppPreferences>().isDark();
  if (!GetIt.I.isRegistered<ThemeCubit>()) {
    getIt.registerLazySingleton<ThemeCubit>(
            () => ThemeCubit(isDark ? ThemeMode.dark : ThemeMode.light));
  }
}
