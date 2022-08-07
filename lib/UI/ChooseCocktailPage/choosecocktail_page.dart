// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stateful_barbotz/UI/ChooseCocktailPage/SexOnTheBeach_page.dart';
import 'package:stateful_barbotz/models/global.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Cocktailspage extends StatefulWidget {
  const Cocktailspage({Key? key}) : super(key: key);

  @override
  _CocktailspageState createState() => _CocktailspageState();
}

class _CocktailspageState extends State<Cocktailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundPrimaryColor,
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "BARBOT.Z",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Black Ops One',
                    color: Color(0xffac8a75)),
                children: const <TextSpan>[
                  TextSpan(
                    text: '\nPERFECT MIXED COCKTAILS',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserral',
                        color: Color(0xFF5e5148)),
                  ),
                ]),
          ),
          centerTitle: true,
          backgroundColor: AppBarBackgroundColor,
        ),
        body: ListView(
            padding: EdgeInsets.only(
              top: 25,
              left: 20,
              right: 20,
            ),
            children: [
              //Outside Container
              Container(
                  height: 720,
                  //color: Colors.red,
                  child: Stack(
                    children: [
                      // Big Rectangle Container
                      Padding(
                          padding: EdgeInsets.only(
                            top: 70,
                          ),
                          child: Container(
                            height: 580,
                            decoration: BoxDecoration(
                              color: CC_RectangleBigLight,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          )),
                      // Small Rectangle Container
                      Container(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 530,
                            width: MediaQuery.of(context).size.width * 0.73,
                            decoration: BoxDecoration(
                              color: CC_RectangleSmallLight,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          )),
                      // Details Button Container
                      Padding(
                          padding: EdgeInsets.only(
                            bottom: 50,
                          ),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 45,
                                width: 150,
                                child: ElevatedButton(
                                  child: Text('See Details',
                                      style: CC_ButtonTextStyle),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SexOnTheBeach()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: CC_ButtonBackground,
                                  ),
                                ),
                              ))),
                      // Picture Container
                      Container(
                          child: Positioned(
                        height: 650,
                        top: -120,
                        child: Image.asset('images/sex_on_the_beach.png'),
                      )),

                      // Title Container
                      Padding(
                          padding: EdgeInsets.only(
                            bottom: 125,
                          ),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text('Sex on the Beach',
                                  style: CC_TitleStyle)))
                    ],
                  ))
            ]));
  }
}
