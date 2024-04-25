import 'dart:async';
import 'package:flutter/material.dart';
import 'Jiu Jitsu videos.dart';
import 'Kick Boxing Videos.dart';
import 'Boxing videos.dart';
import 'Filipino Martial Arts Videos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color using the Color class
      backgroundColor: const Color(0xFF000000), // Replace with your desired color code
      body: Center(
        child: Image.asset(
        'images/Bunal Bidyos splash.png', // Replace with your image asset path
        width: 249,
        height: 310,
        )
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 221, 21, 100),
        title: const Text('Home Screen'),
      ),
      backgroundColor: const Color.fromRGBO(255, 221, 21, 5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            CustomButton(
              buttonText: "Jiu Jitsu",
              buttonImage: "images/jiu jitsu silhouette.png",
              onPressed: () {
                // Handle button press
                print("Jiu Jitsu button pressed");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const JiuJitsuVideosPage(title: 'Jiu Jitsu Videos Page')),
                );
              },
            ),
            CustomButton(
              buttonText: "Kick Boxing",
              buttonImage: "images/kickboxing silhouette.jpg",
              onPressed: () {
                // Handle button press
                print("Kick Boxing button pressed");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const KickBoxingVideosPage(title: 'Kick Boxing Videos Page')),
                );
              },
            ),
            CustomButton(
              buttonText: "Boxing",
              buttonImage: "images/boxing silhouette.jpg",
              onPressed: () {
                // Handle button press
                print("Boxing button pressed");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const BoxingVideosPage(title: 'Boxing Videos Page')),
                );
              },
            ),
            CustomButton(
              buttonText: "FMA",
              buttonImage: "images/Filipino martial arts silhouette.jpg",
              onPressed: () {
                // Handle button press
                print("Filipino martial arts button pressed");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const FMAVideosPage(title: 'Filipino Martial Arts Videos Page')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonText;
  final String buttonImage;
  final VoidCallback onPressed;

  const CustomButton({super.key, 
    required this.buttonText,
    required this.buttonImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
        child: Stack(
                  children: <Widget>[
                    Ink(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(buttonImage),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Align(alignment: Alignment.center,
                      child: Text(
                              buttonText,
                              style: TextStyle(
                                fontSize: 20,
                                foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.black,
                                )
                            ),
                    ),
                    Align(alignment: Alignment.center,
                     child: Text(
                              buttonText,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 221, 21, 5),
                                )
                            ),
                    ),
                  ],
        ),
    );
  }
}