import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/generated/assets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../config/settings_provider.dart';
import '../widgets/sebha_widget.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  var turns = 0.0;
  int numberOfTasbyh = 0;

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;

    var vm = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Positioned(
                  bottom: 270,
                  left: 155,
                  height: 160,
                  child: Image.asset(
                    Assets.imagesSebhaHeader,
                    color: vm.isDark()
                        ? ApplicationThemeManager.onPrimaryDarkColor
                        : theme.primaryColor,
                  ),
                ),
                AnimatedRotation(
                    turns: turns,
                    duration: const Duration(milliseconds: 150),
                    child:
                    SebhaWidget(mediaQuery: mediaQuery, vm: vm, theme: theme))
              ],
            ),
            Text(lang.tasbehat),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: vm.isDark() ? theme.primaryColor : const Color(
                      0XFFC8B395),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                numberOfTasbyh.toString(),
                style: TextStyle(
                  color: vm.isDark() ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: vm.isDark()
                      ? ApplicationThemeManager.onPrimaryDarkColor
                      : theme.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () {
                  setState(() {
                    numberOfTasbyh++;
                    turns += 1 / 16;
                  });
                },
                child: Text(
                  numberOfTasbyh<30 ? "سبحان الله":"الله أكبر",
                  style: TextStyle(
                    color: vm.isDark() ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
