// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionSection extends StatelessWidget {
  ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Nos Actions",
            style: TextStyle(
              fontFamily: "Georgia",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,
              margin: EdgeInsets.all(4),
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Efficace",
                    style: GoogleFonts.ubuntu(
                        textStyle:
                            TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                  Icon(
                    Icons.flash_on_sharp,
                    size: 50,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(4),
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                width: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Plus value",
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    )
                  ],
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              width: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rapide",
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          textStyle: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.speed,
                    color: Colors.white,
                    size: 50,
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(4),
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                width: 190,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Econome",
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              textStyle: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))),
                      Icon(
                        Icons.eco,
                        size: 50,
                        color: Colors.white,
                        shadows: [Shadow(blurRadius: 3.4)],
                      )
                    ],
                  ),
                )),
          ],
        )
      ],
    );
  }
}
