import 'package:flutter/material.dart';
import 'package:islami_c7_sun/hadeth_details/hadeth_details.dart';
import 'package:islami_c7_sun/home/hadeth/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethModel hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
