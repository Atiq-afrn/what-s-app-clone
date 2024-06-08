import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  static const String id = 'screen1';
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => ScreenState();
}

class ScreenState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              decoration:
                  const BoxDecoration(color: Colors.teal, border: Border()),
              child: const Text(
                'you logout whats app',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
