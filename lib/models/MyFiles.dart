import 'package:flutter/material.dart';
import 'package:samyush/constant.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage, cloudLink;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.svgSrc,
      required this.title,
      required this.totalStorage,
      required this.numOfFiles,
      required this.percentage,
      required this.color,
      required this.cloudLink});
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "My CV",
    numOfFiles: 1,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1MB",
    color: primaryColor,
    percentage: 35,
    cloudLink:
        'https://drive.google.com/file/d/1dOeZDHuV49s0zA-_zNBVDvc1c8ejjSxX/view?usp=sharing',
  ),
  CloudStorageInfo(
    title: "Google Gallery",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
    cloudLink:
        'https://drive.google.com/drive/folders/1ILmQjnQX1CUS8-IDtlaku3kVZSru6sCB?usp=sharing',
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
    cloudLink: 'https://1drv.ms/u/s!AmEgX1hfFd1-tVVqYGlsRmLM57yC?e=kNt7sa',
  ),
  CloudStorageInfo(
    title: "Contact Me",
    numOfFiles: 217,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
    cloudLink: 'https://forms.gle/7reGZ32U5aBA5RaV7',
  ),
];
