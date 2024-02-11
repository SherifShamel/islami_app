import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;

  const SuraTitleWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suraNumber.toString(),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: "El Messiri",
            ),
          ),
        ),
        Container(
          height: 35,
          width: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suraName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontFamily: "El Messiri",
            ),
          ),
        ),
      ],
    );
  }
}
