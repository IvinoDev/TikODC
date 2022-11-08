import 'package:tikodc/screens/register_next.dart';
import 'package:country_phone_code_picker/controller/country_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _eformKey = GlobalKey<FormState>();
  final _tformKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _numeroController;

  CountryController countryController = CountryController(); //Initialize the controller


  bool isValid = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _numeroController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _numeroController.dispose();
    super.dispose();
  }

  Widget choixModeRecuperation() {
    return Container(
        height: 70,
        width: 1000,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => {

              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: 30,
                child: Text(
                  'Numéro de téléphone',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () => {

              },
              child: Container(
                height: 30,
                alignment: Alignment.centerLeft,
                child: Text(
                  'E-mail',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            bottom: TabBar(
              indicatorColor: Colors.black,
              indicator: BoxDecoration(

              ),
              labelColor: Colors.black,
              labelPadding: EdgeInsets.only(left: 30,right: 30),
              tabs: [
                Tab(
                  text: "Téléphone",
                ),
                Tab(
                  text: "E-mail",
                )
              ],
            ),

          ),
          body: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
            child: TabBarView(
              children: [
                _telephoneTab(),
                _emailTab(),
              ],
            ),
          )
      ),
    );
  }

  _telephoneTab() {
    return Form(
      key: _tformKey,
      child: Column(
          children: [
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

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey, fontSize: 14), //apply style to all
                      children: [
                        TextSpan(text: 'Votre numéro de téléphone servira à améliorer ton expérience sur TikODC, notamment en vous mettant en relation avec des personnes que vous connaissez peut-être, en personnalisant vos publicités, etc.\n Si vous vous inscrivez par SMS, des frais peuvent s\'appliquer.\n', style: TextStyle(fontWeight: FontWeight.normal)),
                        TextSpan(text: 'En savoir plus', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline)),
                      ]
                  )
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
                  "Envoyer un code",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

              onPressed: () => {
                Fluttertoast.showToast(
                  msg: "Cet option ne'est pas disponible pour le moment, continuer avec votre e-mail"
                )
              },
            ),
          ],
        ),
    );
  }

  _emailTab() {
    return Form(
      key: _eformKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

          SizedBox(height: 25,),

          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 14), //apply style to all
                  children: [
                    TextSpan(text: 'En continuant, vous acceptez les  ', style: TextStyle(fontWeight: FontWeight.normal)),
                    TextSpan(text: 'conditions d\'utilisation', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: '  de TikODC et confirmez avoir lu les  ', style: TextStyle(fontWeight: FontWeight.normal)),
                    TextSpan(text: 'politique de confidentialité', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: ' de TikODC.', style: TextStyle(fontWeight: FontWeight.normal)),
                  ]
              )
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

            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterNext(email: _emailController.text,)))
            },
          ),

        ],
      ),
    );
  }
}
