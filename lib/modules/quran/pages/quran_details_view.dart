import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/generated/assets.dart';
import 'package:islami_app/modules/quran/pages/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  static const String routeName = "quran_details";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetail;
    loadData(args.suraNumber);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesMainBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "اسلامي",
            style: TextStyle(
              fontFamily: "El Messiri",
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: const TextStyle(
                      fontFamily: "El Messiri",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.play_circle_fill_outlined,
                    size: 28,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: versesList.length,
                    itemBuilder: (context, index) => Text(
                      "${{index + 1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "El Messiri",
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadData(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = suraContent.split("\n");
    setState(() {});
  }
}
