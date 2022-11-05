import 'package:flutter/material.dart';
import 'package:tikodc/screens/register.dart';
import 'package:tikodc/screens/home.dart';
import 'package:tikodc/screens/add_video.dart';
import 'package:tikodc/screens/chose_login.dart';
import 'package:tikodc/screens/login.dart';
import 'package:tikodc/screens/discover.dart';
import 'package:tikodc/screens/message.dart';
import 'package:tikodc/screens/profil.dart';
import 'package:tikodc/widgets/custom_bottom_navigation_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectePageIndex = 0;
  static const List<Widget> _pages = [
    Home(),
    AddVideo(),
    ChoseLogin(),
    Login(),
    Discover(),
    Register(),
    Message(),
    Profil()
  ];
  void _onIconTapped(int index) {
    setState(() {
      _selectePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectePageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectePageIndex,
        onIconTap: _onIconTapped,
        context: context,
      ),
    );
  }
}
