import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_theme/core/constants/app_constants.dart';
import 'package:flutter_bloc_theme/core/router/app_router.dart';
import 'package:flutter_bloc_theme/core/theme/dark_theme.dart';
import 'package:flutter_bloc_theme/core/theme/light_theme.dart';
import 'package:flutter_bloc_theme/data/logic/debug/app_bloc_observer.dart';
import 'package:flutter_bloc_theme/data/logic/theme/theme_cubit.dart';
import 'package:flutter_bloc_theme/data/services/service_locator.dart';

import 'view/home.dart';
import 'view/places_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  Bloc.observer =  AppBlocObserver();

  runApp(MultiBlocProvider(
    providers: [BlocProvider(create: (context) => getIt<ThemeCubit>())],
    child: const RootApp(),
  ));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ThemeCubit, ThemeMode>(
      buildWhen: (previous, current) => previous != current,
      builder: (_, state) {
        return MaterialApp(
          title: AppConstants.appTitle,
          debugShowCheckedModeBanner: false,
          theme: lightAppTheme,
          darkTheme: darkAppTheme,
          themeMode: state,
       //   initialRoute: MyHomePage.routeName,
          initialRoute: PlacesScreen.routeName,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
