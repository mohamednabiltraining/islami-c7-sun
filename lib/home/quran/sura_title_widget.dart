import 'package:flutter/material.dart';
import 'package:islami_c7_sun/sura_details/sura_details.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsScreenArgs(index: index, title: title));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
