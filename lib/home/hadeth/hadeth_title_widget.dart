import 'package:flutter/material.dart';
import 'package:islami_c7_sun/home/hadeth/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethModel hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
