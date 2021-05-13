import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Icon icons;
  final Function press;
  const DefaultButton({
    Key key,
    this.icons,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        onPressed: press,
        child: icons,
      ),
    );
  }
}
