import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c7_sun/hadeth_details/hadeth_details.dart';
import 'package:islami_c7_sun/home/home_screen.dart';
import 'package:islami_c7_sun/my_theme.dart';
import 'package:islami_c7_sun/providers/settings_provider.dart';
import 'package:islami_c7_sun/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get settings provider object
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.themeMode,
      locale: Locale(settingsProvider.langCode),
//      darkTheme: MyTheme.darkTheme: ,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
