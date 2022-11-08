import 'package:tikodc/navigation_container.dart';
import 'package:tikodc/screens/login.dart';
import 'package:tikodc/screens/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartLogin extends StatefulWidget {
  const StartLogin({Key? key}) : super(key: key);

  @override
  State<StartLogin> createState() => _StartLoginState();
}

class _StartLoginState extends State<StartLogin> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _haveAccount = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NavigationContainer()))
          },
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: SelectionArea(
                        child: Text(
                      'Connexion TikODC',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SelectionArea(
                      child: Text(
                    'Gèrez votre compte, regardez et commentez les vidéos de vos créateurs préférés et plus encore.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                  )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3, right: 3),
                        child: ListTile(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()))
                          },
                          leading: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Utiliser téléphone/e-mail/nom d\'utilisateur',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3, right: 3),
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Color(0xFF3275FA),
                          ),
                          title: Text(
                            'Continuer avec Facebook  ',
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3, right: 3),
                        child: ListTile(
                          leading: GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/images/google.svg',
                            ),
                          ),
                          title: Text(
                            'Continuer avec Google  ',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3, right: 3),
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFF0C8DCF),
                          ),
                          title: Text(
                            'Continuer avec Twitter',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3, right: 3),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            'assets/images/instagram.svg',
                            height: 25,
                            width: 25,
                          ),
                          title: Text(
                            'Continuer avec Instagram',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 6,
                      bottom: 20,
                      right: 20,
                      left: 20),
                  child: SelectionArea(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13), //apply style to all
                              children: [
                                TextSpan(
                                    text: 'En continuant, vous acceptez nos ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: 'Conditions d\'utilisation',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: ' et reconnaissez avoir lu notre ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: 'politique de confidentialité',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text:
                                        ' pour savoir comment nous collectons, utilisons et partageons vos données.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]))),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0x48CDCECE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectionArea(
                                child: Text(
                              'Vous n\'avez pas de compte ?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                            SelectionArea(
                                child: GestureDetector(
                              onTap: () => {
                                setState(() {
                                  _haveAccount = !_haveAccount;
                                }),
                                _haveAccount
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StartPage(
                                                  haveAccount: false,
                                                )),
                                      )
                                    : null
                              },
                              child: Text(
                                ' Inscription',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Color.fromARGB(255, 255, 136, 0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
