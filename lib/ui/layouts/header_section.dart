import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Container(
          height: 150,
          width: double.infinity,
          color: Colors.amber,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Bienvenue",
                style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Nekk Dev !",
                style: TextStyle(
                    fontFamily: "cambria",
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
