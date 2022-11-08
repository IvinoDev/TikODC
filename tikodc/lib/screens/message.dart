import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(137, 82, 138, 152),
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: "Page pas encore terminée.\n", style: TextStyle(fontSize: 22)),
                ]),
          )
        ],
      ),
    );
  }
}
