import 'package:flutter/material.dart';

class VIB extends StatelessWidget {
  final icon;
  final String title;
  final Function ontap;

  const VIB({Key key, this.icon, this.title, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 23.0,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
