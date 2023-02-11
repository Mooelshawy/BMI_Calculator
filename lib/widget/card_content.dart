
import 'package:flutter/material.dart';


const iconSize = 100.0;

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.genderIcon,
    required this.title,
  });

  final Icon genderIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon.icon,
            size: iconSize,
            color: Colors.white,
          ),
          Text('$title',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
        ],
      );
  }
}
