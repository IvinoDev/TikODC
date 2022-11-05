import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tikodc/models/video.dart';

class HomeSideBar extends StatefulWidget {
  const HomeSideBar({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  State<HomeSideBar> createState() => _HomeSideBarState();
}

class _HomeSideBarState extends State<HomeSideBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  //late final Video video;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _profileImageButton(widget.video.postedBy.profileImageUrl),
          SizedBox(
            height: 19,
          ),
          _sideBarItem('heart', widget.video.likes, style),
          _sideBarItem('comment', widget.video.comments, style),
          _sideBarItem('favorite', widget.video.favorite, style),
          _sideBarItem(
              'share',
              widget.video.share == '0' ? 'Partager' : widget.video.share,
              style),
          AnimatedBuilder(
              animation: _animationController,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assets/images/disque.png',
                      ),
                    ),
                  ),
                  CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/me.jpg'))
                ],
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: 2 * pi * _animationController.value,
                  child: child,
                );
              }),
        ],
      ),
    );
  }

  _sideBarItem(String iconName, String label, TextStyle style) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/$iconName.svg',
            color: Colors.white.withOpacity(0.75),
            height: 34,
            width: 35,
          ),
          Text(
            label,
            style: style,
          )
        ],
      ),
    );
  }

  _profileImageButton(String imageUrl) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))),
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(25)),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
