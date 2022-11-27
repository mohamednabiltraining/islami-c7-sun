import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c7_sun/providers/settings_provider.dart';
import 'package:islami_c7_sun/sura_details/verse_widget.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    if (verses.isEmpty) readFile(args.index);
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getMainBackgroundImage()),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Card(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (_, index) {
                        return VerseWidget(verses[index], index + 1);
                      },
                      separatorBuilder: (_, __) {
                        return Container(
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          width: double.infinity,
                          color: Theme.of(context).accentColor,
                        );
                      },
                itemCount: verses.length,
              ),
            ),
          ),
        ));
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');
    verses = lines;
    print(verses);
    setState(() {});
  }
}

class SuraDetailsScreenArgs {
  int index;
  String title;

  SuraDetailsScreenArgs({required this.index, required this.title});
}
