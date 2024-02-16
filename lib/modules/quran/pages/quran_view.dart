import 'package:flutter/material.dart';
import 'package:islami_app/generated/assets.dart';
import 'package:islami_app/modules/quran/pages/quran_details_view.dart';
import 'package:islami_app/modules/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(Assets.imagesQuranHeader,
            height: mediaquery.size.height * 0.2),
        const Divider(),
        const Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: "El Messiri",
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Expanded(
              child: Text(
                "اسم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: "El Messiri",
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetailsView.routeName,
                  arguments: SuraDetail(
                    suraName: suraNames[index],
                    suraNumber: (index + 1).toString(),
                  ),
                );
              },
              child: SuraTitleWidget(
                  suraName: suraNames[index], suraNumber: index + 1),
            ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}

class SuraDetail {
  final String suraName;
  final String suraNumber;

  SuraDetail({required this.suraName, required this.suraNumber});
}
