import 'package:flutter/material.dart';
import 'package:my_widget_app_0200/button_section.dart';
import 'package:my_widget_app_0200/imageSection.dart';
import 'package:my_widget_app_0200/title_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CP213 (2/2566): Lab01',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pakinnat Patthanajiranan 0200'),
          centerTitle: true,
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'image/albion.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imageSection(image: 'image/maxresdefault.jpg'),
            TitleSection(),
            ButtonSection(),
            Text(
              'Additional Text 1',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
  'Albion Online is a sandbox MMORPG set in an open medieval fantasy world. The game features a player-driven economy where nearly every item is player-crafted. Combine armor pieces and weapons suited to your playstyle in a unique, classless "you are what you wear" system.',
  style: TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontFamily: 'Roboto', // Change to your preferred font family
    height: 1.5, // Adjust line spacing
  ),
  textAlign: TextAlign.center,
  ),


            
          ],
        ),
      ),
    );
  }
}
