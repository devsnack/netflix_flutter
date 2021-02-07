import 'package:flutter/material.dart';
import 'package:netflix_flutter/data/data.dart';
import 'package:netflix_flutter/widgets/widgets.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key key}) : super(key: key);
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  ScrollController _scrollController;
  double scrolloffset = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          scrolloffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.cast,
          color: Colors.grey[850],
        ),
        onPressed: () {
          print("clicked");
        },
        backgroundColor: Colors.white,
      ),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: appBar(
            scrolloffset: scrolloffset,
          )),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(child: ContentHeader()),
          SliverPadding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              sliver: SliverToBoxAdapter(
                child: Previews(
                    key: PageStorageKey("previews"),
                    title: "Previews",
                    contentlist: previews),
              )),
          SliverPadding(
              padding: EdgeInsets.only(top: 15, bottom: 0),
              sliver: SliverToBoxAdapter(
                child: ContentList(
                    key: PageStorageKey("mylist"),
                    title: "Mylist",
                    contentlist: myList),
              )),
          SliverPadding(
              padding: EdgeInsets.only(top: 15, bottom: 0),
              sliver: SliverToBoxAdapter(
                child: ContentList(
                  key: PageStorageKey("originals"),
                  title: "Originals",
                  contentlist: originals,
                  isoriginals: true,
                ),
              )),
          SliverPadding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              sliver: SliverToBoxAdapter(
                child: ContentList(
                    key: PageStorageKey("trending"),
                    title: "Trending",
                    contentlist: trending),
              ))
        ],
      ),
    );
  }
}
