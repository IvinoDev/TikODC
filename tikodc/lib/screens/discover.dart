import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(170, 16, 107, 102),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/loading.json',
                width: 230, height: 230, fit: BoxFit.cover),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: "Page pas encore terminée.\n", style: TextStyle(fontSize: 22)),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
