import 'package:flutter/material.dart';
class Navigate extends StatefulWidget {
  const Navigate({super.key});


  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Bottom Navigation "),
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
            ),
            body:Container(),
            bottomNavigationBar: BottomNavigationBar(
            items: const[
            BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.purple,
              size: 25,
            )),
        BottomNavigationBarItem(
            label: "Bluetooth",
            icon: Icon(
              Icons.bluetooth,
              color: Colors.blue,
              size: 25,
            )),
        BottomNavigationBarItem(
            label: "Music",
            icon: Icon(
              Icons.music_note,
              color: Colors.purple,
              size: 25,
            )),
        BottomNavigationBarItem(
            label: "Camera",
            icon: Icon(
              Icons.camera,
              color: Colors.black,
              size: 25,

            )),
        ],
   ),
    ),
    );
  }
}