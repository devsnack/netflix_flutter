import 'package:flutter/material.dart';
import 'package:netflix_flutter/assets.dart';

class appBar extends StatelessWidget {
  final double scrolloffset;

  const appBar({Key key, this.scrolloffset}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black
            .withOpacity((scrolloffset / 250).clamp(0, 1).toDouble()),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                      name: "Tv show", ontap: () => {print("clicked tv show")}),
                  _AppBarButton(
                      name: "Movies", ontap: () => {print("clicked Movies")}),
                  _AppBarButton(
                      name: "MyList", ontap: () => {print("clicked MyList")})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String name;
  final Function ontap;

  const _AppBarButton({Key key, this.name, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      onTap: ontap,
    );
  }
}
