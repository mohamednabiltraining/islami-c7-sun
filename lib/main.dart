import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_c7_sun/home/home_screen.dart';
import 'package:islami_c7_sun/my_theme.dart';
import 'package:islami_c7_sun/sura_details/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
//      darkTheme: MyTheme.darkTheme: ,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
