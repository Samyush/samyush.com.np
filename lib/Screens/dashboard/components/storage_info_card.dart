import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constant.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard(
      {required this.title,
      required this.svgSrc,
      required this.amountOfFiles,
      required this.numOfFiles,
      required this.press});

  final String title, svgSrc, amountOfFiles, press;
  final int numOfFiles;
  // final VoidCallback press;

  void _launchURL() async => await canLaunch(press)
      ? await launch(press)
      : throw 'Could not launch $press';
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchURL,
        child: Container(
          margin: EdgeInsets.only(top: defaultPadding),
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultPadding),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(svgSrc),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "$numOfFiles Views",
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              Text(amountOfFiles)
            ],
          ),
        ),
      ),
    );
  }
}
