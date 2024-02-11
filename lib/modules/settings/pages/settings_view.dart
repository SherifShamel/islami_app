import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings View",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          fontFamily: "El Messiri",
        ),
      ),
    );
  }
}
