import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            'Connexion',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: Colors.black45,
            ),
          ),
        ],
        elevation: 0,

      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height / 8.5,
            child: Row(
              children: [
                Text(
                  "Inscription",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height / 8.5,
          ),
        ],
      ),
    );
  }
}
