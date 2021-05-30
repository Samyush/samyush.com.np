import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Social Medias",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/github.svg",
            title: "GitHub",
            amountOfFiles: "Click",
            numOfFiles: 1328,
            press: 'https://github.com/Samyush',
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/youtube.svg",
            title: "YouTube Channel",
            amountOfFiles: "Click",
            numOfFiles: 121,
            press: 'https://www.youtube.com/channel/UCBaIBn5maDPBrEWAtybjngg',
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/instagram.svg",
            title: "Instagram",
            amountOfFiles: "Click",
            numOfFiles: 1270,
            press: 'https://www.instagram.com/samyush/',
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/lnk.svg",
            title: "LinkedIn",
            amountOfFiles: "Click",
            numOfFiles: 500,
            press: 'https://www.linkedin.com/in/samyush-m-4232a3150/',
          ),
        ],
      ),
    );
  }
}
