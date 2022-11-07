import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tikodc/widgets/home_side_bar.dart';
import 'package:tikodc/widgets/video_detail.dart';
import 'package:tikodc/widgets/video_tile.dart';

import '../_mock_data/mock.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isPourtoiSelected = true;
  int _snappedPageIndex = 0;

  List chaine = [];

  List _nextVideo() {
    List<int> numberList=[];
    while(numberList.length<videos.length){
      int random_number = Random().nextInt(videos.length);
      if (!numberList.contains(random_number)){
        numberList.add(random_number);
      }
    }
    print(numberList);
    return numberList;
  }

  @override
  initState() {
    chaine = _nextVideo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {

          },
          icon: Icon(
            Icons.live_tv_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {

            },
            icon: Icon(
              Icons.search_rounded
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => {
                setState(() {
                  _isPourtoiSelected = false;
                })
              },
              child: Text(
                "Abonnements",
                style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(
                  fontSize: !_isPourtoiSelected ? 18 : 15,
                  color: !_isPourtoiSelected ? Colors.white : Colors.grey
                ),
              ),
            ),
            Text("    "),
            GestureDetector(
              onTap: () => {
                setState(() {
                  _isPourtoiSelected = true;
                })
              },
              child: Text(
                "Pour toi",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(
                    fontSize: _isPourtoiSelected ? 18 : 15,
                    color: _isPourtoiSelected ? Colors.white : Colors.grey
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
          onPageChanged: (int page) => {
            setState((){
              _snappedPageIndex = page;
            }),
          },
          scrollDirection: Axis.vertical,
          itemCount: videos.length,

          itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            VideoTile(
                video: videos[chaine.elementAt(index)],
                snappedPageIndex: _snappedPageIndex,
                currentIndex: index,

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: VideoDetail(
                      video: videos[chaine.elementAt(index)],),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: HomeSideBar(
                            video: videos[chaine.elementAt(index)],
                          ),
                  ),
                ),
              ],
            )
          ],
        );
      })
    );

  }
}
