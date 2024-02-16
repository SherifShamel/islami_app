import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/modules/hadeth/pages/hadeth_view.dart';
import 'package:islami_app/modules/quran/pages/quran_view.dart';
import 'package:islami_app/modules/radio/pages/radio_view.dart';
import 'package:islami_app/modules/settings/pages/settings_view.dart';
import 'package:islami_app/modules/tasbeh/pages/tasbeh_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    const TasbehView(),
    const RadioView(),
    SettingsView(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var lang = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          vm.changeBackground(),
        ),
      )),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            lang.islami,
            style: TextStyle(
                color: vm.isDark()
                    ? Colors.white
                    : Colors.black),
          ),
        ),
        body: screens[currentIndex], //depending on index
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/quran.png"),
                ),
                label: lang.quran),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/hadeth.png",
                ),
              ),
              label: lang.hadeth,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/tasbeh.png",
                ),
              ),
              label: lang.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/radio.png",
                ),
              ),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: lang.settings,
            ),
          ],
        ),
      ),
    );
  }
}
