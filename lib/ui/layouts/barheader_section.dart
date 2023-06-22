import 'package:flutter/material.dart';

class BarHeaaderSection extends StatelessWidget {
  BarHeaaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.amber.shade500,
          ),
          child: Icon(
            Icons.podcasts,
            color: Colors.white,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.amber.shade400,
          child: Icon(
            Icons.branding_watermark,
            color: Colors.white,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.amber.shade100,
          child: Icon(
            Icons.policy_sharp,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.teal.shade200,
          child: Icon(
            Icons.local_activity,
            color: Colors.white,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.teal,
          child: Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.teal.shade400,
          child: Icon(
            Icons.access_alarm,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
