// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stateful_barbotz/models/global.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:async';

class SexOnTheBeach extends StatefulWidget {
  const SexOnTheBeach({Key? key}) : super(key: key);

  @override
  _SexOnTheBeachState createState() => _SexOnTheBeachState();
}

class _SexOnTheBeachState extends State<SexOnTheBeach> {
  double progress = 0.0;

  bool orderButton = true;
  bool progressRun = true;
  bool _isVisible = false;

  void snackTrue() {
    setState(() {
      _isVisible = true;
      // _isVisible = !_isVisible;
    });
  }

  void snackFalse() {
    setState(() {
      _isVisible = false;
      // _isVisible = !_isVisible;
    });
  }

  void progressChange() {
    setState(() {
      progressRun = false;
      // _isVisible = !_isVisible;
    });
  }

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
      body: Stack(children: [
        // Background
        Positioned.fill(
          child: ColoredBox(
            color: Color(0xFF412d23),
          ),
        ),
        // ProgressBar Container
        Positioned(
            height: 230,
            width: 37,
            top: 130,
            right: 18,
            child: FAProgressBar(
                //currentValue: 80,
                currentValue: progress,
                // displayText: '%',
                displayTextStyle:
                    TextStyle(fontSize: 10, color: Colors.black87),
                direction: Axis.vertical,
                animatedDuration: const Duration(milliseconds: 100),
                verticalDirection: VerticalDirection.up,
                borderRadius: BorderRadius.circular(25),
                backgroundColor: const Color(0xFF755D4E),
                progressColor: const Color(0xFFEB9560))),
        // Ingredients Background
        Positioned(
            height: 350,
            width: 414,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFac8a75),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            )),
        // Cocktail Title
        Positioned(
            height: 50,
            width: 414,
            top: 40,
            child: Container(
                child: Center(
                    child: Text('Sex on the Beach',
                        style: TextStyle(
                            fontFamily: 'Big Shoulders Stencil Text',
                            fontSize: 42,
                            color: Color(0xFFe2a08a)))))),
        Positioned(
            height: 35,
            width: 100,
            top: 220,
            right: 65,
            child: Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Progress from Progresbar - Text
                Text(progress.toStringAsFixed(0),
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Color(0xFFe2a08a))),
                Padding(
                    padding: EdgeInsets.fromLTRB(3, 6, 0, 0),
                    child: Text('%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Color(0xFFe2a08a))))
              ],
            ))),
        // Cocktail Picture
        Positioned(
          height: 500,
          width: 290,
          top: 40,
          left: -35,
          child: Image.asset('images/sex_on_the_beach.png'),
        ),
        // Order Button
        Positioned(
            height: 50,
            width: 165,
            right: 30,
            bottom: 330,
            child: Container(
              child: ElevatedButton(
                  onPressed: orderButton
                      ? () {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                    dialogBackgroundColor: Color(0xFFac8a75)),
                                child: new SimpleDialog(
                                  title: new Text("Confirm your Order?"),
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        new SimpleDialogOption(
                                          child: Text('Order Cocktail',
                                              style:
                                                  ShowDialog_Order_Button_Style),
                                          onPressed: () {
                                            Navigator.pop(context);

                                            Timer.periodic(
                                                Duration(milliseconds: 20),
                                                (timer) {
                                              if (progress > 100)
                                                timer.cancel();

                                              if (mounted) {
                                                setState(() {
                                                  if (progress < 100)
                                                    progress += 1;
                                                  if (progressRun == true) {
                                                    if (progress == 100) {
                                                      progressRun == false;

                                                      snackTrue();
                                                    }
                                                  }
                                                });
                                              }
                                            });
                                          },
                                        ),
                                        new SimpleDialogOption(
                                          child: Text('Cancel',
                                              style:
                                                  ShowDialog_Cancel_Button_Style),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );

                          // Timer.periodic(Duration(milliseconds: 100), (timer) {
                          //   if (progress > 100) timer.cancel();

                          //   if (mounted) {
                          //     setState(() {
                          //       if (progress < 100) progress += 1;
                          //     });
                          //   }
                          // });
                        }
                      : null,
                  child: const Text(
                    'Order Cocktail!',
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF945b3d),
                      onPrimary: Color(0xFFd5beb1),
                      shadowColor: Color(0xFF856b5c),
                      elevation: 3,
                      textStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ))),
            )),
        // ingredients list left
        Positioned(
            height: 200,
            width: 200,
            bottom: 50,
            left: 60,
            child: DefaultTextStyle.merge(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('Vodka'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('Peachliqueur'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('Cranberryjuice'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('Orangejuice'),
                      ),
                    ],
                  ),
                ),
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3c3029)))),
        // ingredients list right - quantity
        Positioned(
            height: 200,
            width: 50,
            bottom: 50,
            right: 50,
            child: DefaultTextStyle.merge(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('4cl'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('2cl'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('4cl'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text('6cl'),
                      ),
                    ],
                  ),
                ),
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    color: Color(0xFF3c3029)))),
        Positioned(
          bottom: 0,
          height: 100,
          width: 415,
          child: Visibility(
              visible: _isVisible,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Color(0xFF755D4E),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('Cocktail Done',
                                  style: CocktailFinishStyle),
                            ),
                            Icon(
                              MdiIcons.checkBold,
                              size: 28,
                              color: Color(0xFF2f2621),
                            ),
                          ],
                        ),
                      ),
                      Text('Tap to Menü', style: CocktailFinishSmallStyle)
                    ],
                  ),
                ),
              )),
        )
      ]),
    );
  }
}
