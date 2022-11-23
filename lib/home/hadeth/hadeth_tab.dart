import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c7_sun/home/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) readHadethFile();
    return Column(
      children: [
        Image.asset('assets/images/hadeth_header_image.png'),
        Expanded(
          child: Container(
            child: allHadeth.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (_, index) {
                      return HadethTitleWidget(allHadeth[index]);
                    },
                    separatorBuilder: (_, __) {
                      return Container(
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      );
                    },
                    itemCount: allHadeth.length,
                  ),
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethContent = fileContent.trim().split('#');

    for (int i = 0; i < allHadethContent.length; i++) {
      List<String> singleHadethLines = allHadethContent[i].trim().split('\n');
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      String content = singleHadethLines.join('\n');
      HadethModel hadeth = HadethModel(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}

class HadethModel {
  String title;
  String content;

  HadethModel(this.title, this.content);
}
