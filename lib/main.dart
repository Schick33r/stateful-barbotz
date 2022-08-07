// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'UI/ChooseCocktailPage/choosecocktail_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
        Container(
          height: 10,
          //color: Colors.white,
        ),
        // ** CHOOSE COCKTAILS - START ***
        Container(
            height: 180,
            //color: Colors.blue,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Menü - Choose Cocktail Container
                // Background
                Container(
                    height: 130,
                    width: 344,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF4A2C1D),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                // Button Container
                Container(
                    height: 170,
                    width: 324,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF1e1e1e),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('Choose Cocktail',
                                      style: TextStyle(
                                          fontFamily:
                                              'Big Shoulders Stencil Text',
                                          fontSize: 32,
                                          color: Color(0xFF876357))),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(
                                      MdiIcons.glassCocktail,
                                      size: 56,
                                      color: Color(0xFF795a50),
                                    ),
                                  )
                                ],
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cocktailspage()),
                            );

                            print("Click event on Container");
                          },
                        ))),
              ],
            )),
        // **** CHOOSE COCKTAIL END ****
        Container(
          height: 10,
          //color: Colors.white,
        ),

        // **** COOKBOOK START *****
        Container(
            height: 180,
            //color: Colors.blue,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Background Container
                Container(
                    height: 130,
                    width: 344,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF5b3d2e),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                Container(
                  height: 10,
                  //color: Colors.white,
                ),
                Container(
                    height: 170,
                    width: 324,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            print("Click event on Container");
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF2c2c2c),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('Cookbook',
                                      style: TextStyle(
                                          fontFamily:
                                              'Big Shoulders Stencil Text',
                                          fontSize: 32,
                                          color: Color(0xFF876357))),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(
                                      MdiIcons.bookOpenVariant,
                                      size: 56,
                                      color: Color(0xFF795a50),
                                    ),
                                  )
                                ],
                              )),
                        ))),
              ],
            )),
        // ** COOKBOOK - END ***
        Container(
          height: 10,
          //color: Colors.white,
        ),
        // **** GAMES START *****
        Container(
            height: 180,
            //color: Colors.blue,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    height: 130,
                    width: 344,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF4A2C1D),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                Container(
                  height: 10,
                  //color: Colors.white,
                ),
                Container(
                    height: 170,
                    width: 324,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            print("Click event on Container");
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF1e1e1e),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('Games',
                                      style: TextStyle(
                                          fontFamily:
                                              'Big Shoulders Stencil Text',
                                          fontSize: 32,
                                          color: Color(0xFF876357))),
                                  Padding(
                                    padding: EdgeInsets.only(top: 1),
                                    child: Icon(
                                      MdiIcons.gamepadVariant,
                                      size: 60,
                                      color: Color(0xFF795a50),
                                    ),
                                  )
                                ],
                              )),
                        ))),
              ],
            )),
        // ** GAMES - END ***
        Container(
          height: 10,
          //color: Colors.white,
        ),

// **** SETTINGS START *****
        Container(
            height: 180,
            //color: Colors.blue,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    height: 130,
                    width: 344,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF5b3d2e),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                Container(
                  height: 20,
                  //color: Colors.white,
                ),
                Container(
                    height: 170,
                    width: 324,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            print("Click event on Container");
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF2c2c2c),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('Settings',
                                      style: TextStyle(
                                          fontFamily:
                                              'Big Shoulders Stencil Text',
                                          fontSize: 32,
                                          color: Color(0xFF876357))),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(
                                      MdiIcons.cog,
                                      size: 54,
                                      color: Color(0xFF795a50),
                                    ),
                                  )
                                ],
                              )),
                        ))),
              ],
            )),
        // ** SETTINGS - END ***
      ]),
    );
  }
}
