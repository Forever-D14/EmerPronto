import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:video_player/video_player.dart';

class PantallaQuemadura extends StatefulWidget {
  @override
  State<PantallaQuemadura> createState() => _PantallaQuemaduraState();
}

class _PantallaQuemaduraState extends State<PantallaQuemadura> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        VideoPlayerController.asset('assets/videos/quemadura.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Emerpronto',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Image.asset('assets/images/icon_emerpronto.png', height: 20)
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Image.asset(
                            'assets/images/quemadura.png',
                            height: 100,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 225,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Quemaduras Leve",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Pasos a Seguir",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              child: ListView(
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  Container(
                    width: 250,
                    child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        title: Text("1.- Elimina el agente responsable de la quemadura\n\nAplica agua fría en la herida, nunca congelada, hasta que desaparezca el dolor",style: TextStyle(color: Colors.red),textAlign: TextAlign.justify),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        title: Text("2.- Retira la ropa en contacto con la quemadura salvo si se pega a la piel\n\nLlama al servicio de emergencia",style: TextStyle(color: Colors.red),textAlign: TextAlign.justify),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15),
                        title: Text("3.- Haz un vendaje con compresas estériles\n\nNo explotes nunca una ampolla, podría infectarse",style: TextStyle(color: Colors.red),textAlign: TextAlign.justify),
                      ),
                    ),
                  ),
                ],
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              )),
          Padding(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  _makePhoneCall();
                },
                child: Text(
                  "Llamar al 911",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
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
