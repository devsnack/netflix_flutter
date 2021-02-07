import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List contentlist;
  bool isoriginals;

  ContentList({Key key, this.title, this.contentlist, this.isoriginals = false})
      : super(key: key);

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
        height: isoriginals ? 500 : 220,
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
                      height: isoriginals ? 400 : 190,
                      width: isoriginals ? 200 : 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(contentlist[index].imageUrl)),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
