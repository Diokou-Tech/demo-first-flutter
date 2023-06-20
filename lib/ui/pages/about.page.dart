import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "About",
                style: Theme.of(context).textTheme.headlineMedium,
                // style: TextStyle(
                //     color: Colors.amber,
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                """Lorem ipsum dolor sit amet consectetur adipiscing elit at, blandit primis fusce duis vulputate sodales dictumst id, quam volutpat suscipit Lorem ipsum dolor sit amet consectetur adipiscing elit at, blandit primis fusce duis vulputate sodales dictumst id, quam volutpat suscipit iaculis pretium ullamcorper mollis. Morbi turpis risus cum mi erat justo vitae, et pulvinar ullamcorper himenaeos gravida vestibulum cubilia rutrum, pharetra elementum ante molestie suscipit eleifend. Hendrerit montes neque phasellus tincidunt natoque malesuada, ad nisi justo suscipit mus libero cursus, dictum quis habitasse ultrices ligula.""",
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 1.5,
                    height: 2,
                    textBaseline: TextBaseline.alphabetic),
                textAlign: TextAlign.justify,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
