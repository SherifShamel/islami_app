import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/pages/hadeth_view.dart';
import 'package:islami_app/modules/quran/pages/quran_view.dart';
import 'package:islami_app/modules/radio/pages/radio_view.dart';
import 'package:islami_app/modules/settings/pages/settings_view.dart';
import 'package:islami_app/modules/tasbeh/pages/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    const TasbehView(),
    const RadioView(),
    const SettingsView(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/main_background.png"),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: screens[currentIndex], //depending on index
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/quran.png"),
                ),
                label: "Quran"),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/hadeth.png",
                ),
              ),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/tasbeh.png",
                ),
              ),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/radio.png",
                ),
              ),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
