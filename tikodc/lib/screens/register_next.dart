import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class RegisterNext extends StatefulWidget {
  const RegisterNext({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  State<RegisterNext> createState() => _RegisterNextState();
}

class _RegisterNextState extends State<RegisterNext> {

  late TextEditingController _mdpController;
  final _eformKey = GlobalKey<FormState>();

  bool isValid = false;

  @override
  void initState() {
    _mdpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _mdpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog progressDialog;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => {
            Navigator.pop(context)
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Inscription',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.black,
                fontSize: 18,
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
        elevation: 1,

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20, bottom: 10),
        child: Form(
          key: _eformKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 15), //apply style to all
                      children: [
                        TextSpan(text: 'Créer un mot de passe', style: TextStyle(fontWeight: FontWeight.w800))
                      ]
                  )
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _mdpController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Saisis le mot de passe",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  helperText: "Entrer un mot de passe sécurisé"
                ),
              ),
              SizedBox(height: 25,),
              MaterialButton(
                disabledColor: Colors.grey.shade300,
                disabledTextColor: Colors.black,
                minWidth: double.infinity,
                color: Color.fromARGB(255, 255, 136, 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                  child: Text(
                    "Suivant",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),

                onPressed: () async => {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: widget.email, password: _mdpController.text),
                  await Future.delayed(Duration(seconds: 5)),
                  progressDialog = new ProgressDialog(context, title: Text("Création du compte"), message: Text("Patientez un instant !")),
                  progressDialog.setLoadingWidget(CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.red))),
                  progressDialog.setTitle(Text("Création de votre compte")),
                  progressDialog.setMessage(Text("Patientez 5 secondes")),
                  progressDialog.show(),

                },
              ),

            ],
          ),
        ),
      )
    );
  }
}
