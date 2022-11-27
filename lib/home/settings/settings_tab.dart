import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c7_sun/home/settings/language_bottom_sheet.dart';
import 'package:islami_c7_sun/home/settings/theme_bottom_sheet.dart';
import 'package:islami_c7_sun/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Theme.of(context).accentColor)),
              child: Text(
                settingsProvider.langCode == 'en' ? "English" : "العربيه",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(color: Theme.of(context).accentColor)),
              child: Text(
                settingsProvider.isDarkMode()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }
}
