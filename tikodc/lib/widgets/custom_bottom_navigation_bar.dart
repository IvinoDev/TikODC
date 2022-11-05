import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key,
      required this.selectedPageIndex,
      required this.onIconTap,
      required this.context})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height * 0.06;
    final style = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 12, fontWeight: FontWeight.w600);

    return BottomAppBar(
      color: selectedPageIndex == 0 || selectedPageIndex == 4
          ? Colors.black
          : Colors.white,
      child: Container(
        height: barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _bottomBarNavItem(0, 'Accueil', style, 'home'),
            _bottomBarNavItem(4, 'Now', style, 'now'),
            _addVideoNavItem(barHeight),
            _bottomBarNavItem(6, 'Inbox', style, 'message'),
            _bottomBarNavItem(7, 'Profil', style, 'person'),
          ],
        ),
      ),
    );
  }

  _bottomBarNavItem(
      int index, String label, TextStyle textStyle, String iconName) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.black : Colors.grey;
    Color iconColor = isSelected ? Colors.black : Colors.grey;
    if (isSelected && (selectedPageIndex == 0 || selectedPageIndex == 4)) {
      iconAndTextColor = Colors.white;
      iconColor = Colors.white;
    }
    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/images/${isSelected ? iconName + '_filled' : iconName}.svg',
            height: MediaQuery.of(context).size.height * 0.025,
            width: MediaQuery.of(context).size.height * 0.025,
            color: iconColor,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            label,
            style: textStyle.copyWith(color: iconAndTextColor),
          )
        ],
      ),
    );
  }

  _addVideoNavItem(double height) {
    return Center(
      child: Container(
        height: height - 19,
        width: 50,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blueAccent, Color.fromARGB(255, 254, 123, 30)]),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Container(
            width: 40,
            height: height - 15,
            decoration: BoxDecoration(
                color: selectedPageIndex == 0 || selectedPageIndex == 4
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              Icons.add,
              color: selectedPageIndex == 0 || selectedPageIndex == 4
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
