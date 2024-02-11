import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hadeth View",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        fontFamily: "El Messiri",
      ),
      ),
    );
  }
}
