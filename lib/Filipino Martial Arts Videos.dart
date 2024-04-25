import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package

import 'main.dart';

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filipino Martial Arts Videos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const FMAVideosPage(title: 'Filipino Martial Arts Videos'),
    );
  }

class FMAVideosPage extends StatefulWidget {
  const FMAVideosPage({super.key, required this.title});

  final String title;

  @override
  State<FMAVideosPage> createState() => _FMAVideosPageState();
}

class _FMAVideosPageState extends State<FMAVideosPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 221, 21, 100),
        title: const Text("FMA Videos"),
          leading: IconButton(
              icon: const Text('Home'), // Text as a button
              onPressed: () {
                // Navigate back to home screen (replace this with your actual navigation logic)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }
          )
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hyperlink(
                buttonText: 'Thursday February 29, 2024 Spring Semester KINI 30 Filipino Martial Arts',
                onTapped: 'https://youtu.be/07MS7Id8S4c?si=vl-mGb3x4B6xLO8z',
            ),

            SizedBox(height: 40),

            Hyperlink(
              buttonText: 'Tuesday March 5, 2024 Spring Semester KINI 30 Filipino Martial Arts',
              onTapped: 'https://youtu.be/fnhj5JleA9g?si=3OlhzEfMt2OjdAvo',
            ),

            SizedBox(height: 40),

            Hyperlink(
              buttonText: 'Thursday March 7, 2024 Spring Semester KINI 30 Filipino Martial Arts',
              onTapped: 'https://youtu.be/jswu3k9DwoQ?si=Q5MJX2nWikzu1ruo',
            ),

            SizedBox(height: 40),

            Hyperlink(
              buttonText: 'Tuesday March 12, 2024 Spring Semester KINI 30 Filipino Martial Arts',
              onTapped: 'https://youtu.be/Zu0AlsivdMI?si=T8o9TxbJFgKWG0nu',
            ),

            SizedBox(height: 40),

            Hyperlink(
              buttonText: 'Thursday March 14, 2024 Spring Semester KINI 30 Filipino Martial Arts',
              onTapped: 'https://youtu.be/k-zXPGIn3f4?si=hA4uWXrkl0R1ESgm',
            ),

            SizedBox(height: 40),

            Hyperlink(
              buttonText: 'Thursday March 19, 2024 Spring Semester KINI 30 Filipino Martial Arts',
              onTapped: 'https://youtu.be/O3DXTMDY9ks?si=DGyYkboaxUCruroc',
            ),
          ],
        ),
      ),
    );
  }
}

class Hyperlink extends StatelessWidget {
  final String buttonText;
  final String onTapped;

  const Hyperlink({super.key, 
    required this.buttonText,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: buttonText,
                style: const TextStyle(color: Colors.blue, fontSize: 24),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {launch(onTapped);}
            )
          ]
        )
    );
  }
}