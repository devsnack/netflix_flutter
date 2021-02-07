import 'package:flutter/material.dart';

class Previews extends StatelessWidget {
  final String title;
  final List contentlist;

  const Previews({Key key, this.title, this.contentlist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 24, bottom: 10),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      Container(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: contentlist.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                print('clicked');
              },
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(contentlist[index].imageUrl)),
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: contentlist[index].color, width: 4)),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: 70,
                      child: Image(
                        image: AssetImage(contentlist[index].titleImageUrl),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
