import 'package:flutter/material.dart';

void main() => runApp(const Appbar());
class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _MyAppState();
}

class _MyAppState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("App Bar"),
          actions: [
            IconButton(
              icon: Icon(
                  Icons.arrow_back
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
          ),








        ),
      ),
    );
  }
}