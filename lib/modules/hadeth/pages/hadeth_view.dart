import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../generated/assets.dart';
import 'hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) loadData();
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          Assets.imagesHadethHeader,
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1.2,
        ),
        const Text(
          "الأحاديث",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: "El Messiri",
          ),
        ),
        Divider(
          thickness: 1.2,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: allHadethContent.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.routeName,
                    arguments: allHadethContent[index]);
              },
              child: Text(
                allHadethContent[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  fontFamily: "El Messiri",
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> loadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = content.split("#");

    for (int i = 0; i < allHadethList.length - 1; i++) {
      String singleHadeth = allHadethList[i].trim();

      int titleIndex = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, titleIndex);
      String content = singleHadeth.substring(titleIndex + 1);

      HadethData hadethData = HadethData(title: title, content: content);
      allHadethContent.add(hadethData);
      setState(() {});
    }
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData({required this.title, required this.content});
}
