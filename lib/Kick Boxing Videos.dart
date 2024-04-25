import 'package:flutter/material.dart';

import 'main.dart';

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kick Boxing Videos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const KickBoxingVideosPage(title: 'Kick Boxing Videos'),
    );
  }

class KickBoxingVideosPage extends StatefulWidget {
  const KickBoxingVideosPage({super.key, required this.title});

  final String title;

  @override
  State<KickBoxingVideosPage> createState() => _KickBoxingVideosPageState();
}

class _KickBoxingVideosPageState extends State<KickBoxingVideosPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 221, 21, 100),
        title: const Text("Kick Boxing Videos"),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'More to come soon!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
