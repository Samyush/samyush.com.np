import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samyush/Components/default_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Future<void> _launched;

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.16),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/ppImg.jpg'),
          ),
          SizedBox(width: 5),
          Text(
            "@samyush",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          DefaultButton(
            icons: Icon(FontAwesomeIcons.github),
            press: () => setState(
              () {
                _launched = _launchInWebViewOrVC('https://github.com/Samyush');
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          DefaultButton(
            icons: Icon(FontAwesomeIcons.linkedin),
            press: () => setState(
              () {
                _launched = _launchInWebViewOrVC(
                    'https://www.linkedin.com/in/samyush-m-4232a3150/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
