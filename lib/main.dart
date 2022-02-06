import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/model_main_repo_impl.dart';
import 'package:moko256timetable2/routes_main.dart';

void main() async {
  await ModelMainRepoImpl.initialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  ThemeData createTheme(Brightness mode, Color foreground) {
    var theme = ThemeData(
      primarySwatch: Colors.blueGrey,
      brightness: mode,
    );
    theme = theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: theme.scaffoldBackgroundColor,
        foregroundColor: foreground,
        elevation: 0,
      ),
    );
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: createTheme(Brightness.light, Colors.black),
        darkTheme: createTheme(Brightness.dark, Colors.white),
        initialRoute: RoutesMain.routeRoot,
        routes: RoutesMain.routes,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateTitle: (context) => AppLocale.of(context).app_name,
      ),
    );
  }
}
