import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {},
          child: Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Ivinodev',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [
          Icon(
            Icons.list,
            color: Colors.black,
            size: 24,
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                    child: Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/948/600',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SelectionArea(
                            child: Text(
                          '@ivinodev',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )),
                        Icon(
                          Icons.qr_code,
                          color: Colors.black,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                            '209',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            'Abonnement',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xFFCDCECE),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                            '209',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            'Abonnes',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xFFCDCECE),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                            '7521',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            'J\'aime',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: OutlinedButton(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        child: Text(
                          'Se deconnecter',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
