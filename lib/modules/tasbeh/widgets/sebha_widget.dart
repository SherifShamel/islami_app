import 'package:flutter/material.dart';

import '../../../config/application_theme_manager.dart';
import '../../../config/settings_provider.dart';
import '../../../generated/assets.dart';

class SebhaWidget extends StatelessWidget {
  const SebhaWidget({
    super.key,
    required this.mediaQuery,
    required this.vm,
    required this.theme,
  });

  final Size mediaQuery;
  final SettingsProvider vm;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: mediaQuery.height*0.5,
      Assets.imagesSebhaBackground,

      color: vm.isDark()
          ? ApplicationThemeManager.onPrimaryDarkColor
          : theme.primaryColor,
      width: mediaQuery.width,
    );
  }
}