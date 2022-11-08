import 'package:tikodc/navigation_container.dart';
import 'package:tikodc/screens/start.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool haveAccount = true;

  @override
  Widget build(BuildContext context) {
    if (haveAccount) {
      return StartPage(haveAccount: haveAccount);
    } else {
      return NavigationContainer();
    }
  }
}
