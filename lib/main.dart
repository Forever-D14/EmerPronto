import 'dart:ui';

import 'package:emerpronto/panatalla_atragantamiento_bebe.dart';
import 'package:emerpronto/pantalla_atragantamiento_adulto.dart';
import 'package:emerpronto/pantalla_hemorragia.dart';
import 'package:emerpronto/pantalla_mordedura_serpiente.dart';
import 'package:emerpronto/pantalla_quemadura.dart';
import 'package:emerpronto/pantalla_traumatismo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pantalla_convulsiones.dart';

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
      title: 'EmerPronto',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'AveriaLibre',
      ),
      home: EmerProntoHome(),
    );
  }
}

class EmerProntoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text("¿En que situación te encuentras?"),
          Spacer(),
          Image.asset(
            'assets/images/icon_emerpronto.png',
            height: 30,
          )
        ],
      )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 35),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/crisis_convulsiva.png',
                                    height: 60,
                                  )),
                              Text(
                                "Crisis Convulsiva",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PantallaConvulsiones()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/traumatismo.png',
                                    height: 60,
                                  )),
                              Text(
                                "Traumatismo",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PantallaTraumatismo()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/atragantamiento_bebe.png',
                                    height: 60,
                                  )),
                              Text(
                                "Atragantamiento de Bebé",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> PantallaAtragantamientoBebe()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/hemorragia.png',
                                    height: 60,
                                  )),
                              Text(
                                "Hemorragia",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> PantallaHemorragia()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/mordedura_serpiente.png',
                                    height: 60,
                                  )),
                              Text(
                                "Mordedura de Serpiente",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> PantallaMordeduraSerpiente()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'assets/images/quemadura.png',
                                    height: 60,
                                  )),
                              Text(
                                "Quemadura Leve",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> PantallaQuemadura()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              'assets/images/atragantamiento_adulto.png',
                              height: 60,
                            )),
                        Text(
                          "Atragantamiento Adulto",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> PantallaAtragantamientoAdulto()));
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: Colors.red)))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _makePhoneCall();
                  },
                  child: Text(
                    "Llamar al 911",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _makePhoneCall() async{
  final Uri emergencia = Uri(
      scheme: 'tel',
      path: '911'
  );
  await launchUrl(emergencia);
}