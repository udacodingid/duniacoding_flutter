import 'dart:async';

import 'package:duniacoding_flutter/ui/page_home.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startSplashScreen() async {
    var duration = Duration(seconds: 5);//selesai 5 detik
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PageHome()));
    });
  }

  //perpindahan class
  //navigation
  //pop  : class B ke class A
  //push : dari class A ke class B
  //pushremove :
  //pushreplacement

  //proses do inbackground
  //proses berada belakang view
  //inistate --> terjadi sebelum view create
  //state --> berada view

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  //stack : widget yg menumpuk,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Image.asset(
                    "gambar/icon.png",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
