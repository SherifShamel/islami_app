import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/pages/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';
import '../../../generated/assets.dart';

class HadethDetailsView extends StatelessWidget {
  const HadethDetailsView({super.key});

  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.isDark()
              ? Assets.imagesMainDarkBackground
              : Assets.imagesMainBackground),
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
            color: vm.isDark()
                ? theme.primaryColor
                : const Color(0xFFF8F8F8).withOpacity(0.8),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  args.title,
                  style: const TextStyle(
                    fontFamily: "El Messiri",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  color: theme.primaryColor,
                ),
                Text(
                  args.content,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "El Messiri",
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
