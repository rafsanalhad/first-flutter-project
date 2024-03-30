import 'package:flutter/material.dart';
import 'package:testflutter/screens/homecreen.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.6,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.6,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 136, 76),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
            child: Center(
              child: Image.asset('assets/img/logo_simasam.png', scale: 0.8),
            )),
        Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 136, 76),
              ),
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    Text("Peduli Lingkungan",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        )),
                    SizedBox(height: 20),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                            "Ikuti prinsip 3R (Reduce, Reuse, Recycle), dan jaga kebersihan lingkungan sekitar.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6)))),
                    SizedBox(height: 20),
                    Material(
                        color: Color.fromARGB(255, 3, 136, 76),
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }, child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                          child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1, fontWeight: FontWeight.bold))
                        )))
                  ],
                )))
      ]),
    ));
  }
}
