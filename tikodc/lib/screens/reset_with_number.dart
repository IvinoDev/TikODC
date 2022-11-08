import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tikodc/screens/verification_otp.dart';

class ResetWithNumber extends StatefulWidget {
  const ResetWithNumber({Key? key}) : super(key: key);

  @override
  State<ResetWithNumber> createState() => _ResetWithNumberState();
}

class _ResetWithNumberState extends State<ResetWithNumber> {

  late TextEditingController _numeroController;

  @override
  void initState() {
    _numeroController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _numeroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            'Réinitialiser',
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
                    'Vous receverez un code par SMS pour réinitialiser votre mot de passe.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  )
              ),
            ),

            Container(
              child: Stack(
                children: [
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    initialValue: PhoneNumber(
                        isoCode: "ML",
                        dialCode: "223"
                    ),
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: const SelectorConfig(

                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    // autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    textFieldController: _numeroController,
                    // formatInput: false,
                    maxLength: 11,
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: false, decimal: false),
                    cursorColor: Colors.black,
                    inputDecoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.only(bottom: 15, left: 0),
                      border: InputBorder.none,
                      hintText: 'Numéro de Téléphone',
                      hintStyle: TextStyle(
                          color: Colors.grey.shade500, fontSize: 16),
                    ),
                    // onSaved: (PhoneNumber number) {
                    //   print('On Saved: $number');
                    // },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            MaterialButton(
              disabledColor: Colors.grey.shade300,
              disabledTextColor: Colors.black,
              minWidth: double.infinity,
              color: Color.fromARGB(255, 255, 136, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                child: Text(
                  "Envoyer le code",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationOTP(methode: _numeroController.text)))
              },
            ),
          ],
        ),
      ),
    );
  }
}
