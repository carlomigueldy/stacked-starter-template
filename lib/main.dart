import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/app/app.locator.dart';
import 'package:stacked_starter_template/app/app.router.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  await ThemeManager.initialise();
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      themes: [
        ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        ThemeData(primaryColor: Colors.red),
        ThemeData(primaryColor: Colors.green),
      ],
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        title: 'Stacked Starter Tempalte',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
      ),
    );
  }
}
