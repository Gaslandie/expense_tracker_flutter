import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

//pour bloquer l'orientation de notre app: services.dart
import 'package:flutter/services.dart';

//va nous permettre d'avoir des couleurs derivées de notre seedColor pour les items de notre app
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

//pour notre Dark mode
var kDarkColorScheme = ColorScheme.fromSeed(
  //brightness pour dire à flutter que c'est pour notre darkMode ce colorScheme
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 59, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
    //on met notre runApp dans cette fonction pour bloquer notre app sur portrait
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kDarkColorScheme.onPrimaryContainer,
            foregroundColor: kDarkColorScheme.primaryContainer,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kDarkColorScheme.onSecondaryContainer,
              fontSize: 14,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 14,
            ),
          ),
        ),
        //themeMode pour avoir le controle sur le theme à appliquer
        //themeMode: ThemeMode.system //default
        home: Expenses(),
      ),
    );
  // });
}
