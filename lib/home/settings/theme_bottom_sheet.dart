import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c7_sun/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
                // change theme to light
                settingsProvider.changeTheme(ThemeMode.light);
              },
              child: settingsProvider.isDarkMode()
                  ? getUnselectedItem(AppLocalizations.of(context)!.light)
                  : getSelectedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                // change theme to light
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDarkMode()
                  ? getSelectedItem(AppLocalizations.of(context)!.dark)
                  : getUnselectedItem(AppLocalizations.of(context)!.dark))
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
