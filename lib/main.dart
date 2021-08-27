import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/ui/scene_classes_table.dart';

void main() {
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
        title: "timetable",
        theme: createTheme(Brightness.light, Colors.black),
        darkTheme: createTheme(Brightness.dark, Colors.white),
        home: const SceneClassesTable(),
      ),
    );
  }
}
