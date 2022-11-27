import 'package:flutter/material.dart';
import 'package:islami_c7_sun/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLocale('en');
              },
              child: settingsProvider.langCode == 'en'
                  ? getSelectedItem('English')
                  : getUnselectedItem('English')),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLocale('ar');
              },
              child: settingsProvider.langCode == 'ar'
                  ? getSelectedItem('العربيه')
                  : getUnselectedItem('العربيه'))
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
