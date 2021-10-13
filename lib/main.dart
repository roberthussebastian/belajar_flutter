import 'package:cashy_app/custom_colors.dart';
import 'package:cashy_app/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cashy App"),
          backgroundColor: darkBlue,
        ),
        //agar tidak lewat batas area
        body: SafeArea(
          //tempat penampungan
          child: Container(
            //color: Colors.indigo,
            margin: const EdgeInsets.only(
                left: 10.0, top: 0, right: 10.0, bottom: 0),
            padding:
                const EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Column kebawah, Row kesamping kanan
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Image(
                      image: AssetImage('assets/images/payment.jpg'),
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                      child: Text(
                        "Rich Together",
                        style: mainHeader,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                        "Save your money little bit and \nwe will help to be rich",
                        style: subHeader,
                        textAlign: TextAlign.center),
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
