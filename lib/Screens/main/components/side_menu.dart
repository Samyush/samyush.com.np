import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/ironheart.png"),
            ),
            DrawerListTile(
              title: "Samyush Business Web",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: 'https://samyush.business.site/',
            ),
            DrawerListTile(
              title: "Transaction Nepal Bank",
              svgSrc: "assets/icons/menu_tran.svg",
              press:
                  'https://drive.google.com/file/d/1YysyMEzb5nbIICz5fdsJeohdWYtC4oYc/view?usp=sharing',
            ),
            DrawerListTile(
              title: "Transaction NIC Asia Bank",
              svgSrc: "assets/icons/menu_task.svg",
              press:
                  'https://drive.google.com/file/d/16Gh70vaYhLNS37ScRA4ZCoZfCM3_MAxL/view?usp=sharing',
            ),
            DrawerListTile(
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
              press: '',
            ),
            DrawerListTile(
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
              press:
                  'https://www.google.com/maps/place/Samyush/@27.6826842,85.3111206,17z/data=!3m1!4b1!4m5!3m4!1s0x39eb19ba81e808ef:0x42ed6206677e4b75!8m2!3d27.6826771!4d85.3133222',
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: '',
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: 'https://www.instagram.com/samyush/',
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: '',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc, press;
  // final VoidCallback press;

  void _launchURL() async => await canLaunch(press)
      ? await launch(press)
      : throw 'Could not launch $press';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: _launchURL,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
