import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tikodc/screens/verification_otp.dart';

class ResetWithMail extends StatefulWidget {
  const ResetWithMail({Key? key}) : super(key: key);

  @override
  State<ResetWithMail> createState() => _ResetWithMailState();
}

class _ResetWithMailState extends State<ResetWithMail> {
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => {Navigator.pop(context)},
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Réinitialiser',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mot de passe oublié ?',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SelectionArea(
                  child: Text(
                'Nous vous enverrons un code par e-mail  pour réinitialiser votre mot de passe.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
              )),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Adresse e-mail",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              disabledColor: Colors.grey.shade300,
              disabledTextColor: Colors.black,
              minWidth: double.infinity,
              color: Color.fromARGB(255, 255, 136, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Text(
                  "Envoyer le code",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            VerificationOTP(methode: _emailController.text)))
              },
            ),
          ],
        ),
      ),
    );
  }
}
