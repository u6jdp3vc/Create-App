import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget{
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(child: const Icon(Icons.call), onPressed: (){}),
      ElevatedButton(child: const Icon(Icons.near_me), onPressed: (){}),
      ElevatedButton(child: const Icon(Icons.share), onPressed: (){}),
    ]);
  }
}