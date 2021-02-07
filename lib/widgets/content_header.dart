import 'package:flutter/material.dart';
import 'package:netflix_flutter/assets.dart';
import 'vertical_action_button.dart';

class ContentHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.sintel), fit: BoxFit.cover)),
        ),
        Container(
            height: 500,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter))),
        Positioned(
            bottom: 100,
            child: SizedBox(
              width: 250,
              child: Image(
                image: AssetImage(Assets.sintelTitle),
              ),
            )),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VIB(
                  icon: Icons.add,
                  title: "List",
                  ontap: () => print("clicked List"),
                ),
                _playbt(),
                VIB(
                    icon: Icons.info_outline,
                    title: "Info",
                    ontap: () => print("clicked Info"))
              ],
            ))
      ],
    );
  }
}

class _playbt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: const Icon(
        Icons.play_arrow,
        size: 28,
      ),
      color: Colors.white,
      label: const Text(
        "Play",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        print("click play!");
      },
    );
  }
}
