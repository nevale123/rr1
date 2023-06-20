import 'package:flutter/material.dart';
class Radiob extends StatefulWidget {
  const Radiob({super.key});

  @override
  State<Radiob> createState() => _RadiobState();
}

class _RadiobState extends State<Radiob> {
  String _selectedGender = 'Female';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
          backgroundColor: Colors.blue[900],
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);

            }, icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ))
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(value: 'Female', groupValue: _selectedGender, onChanged: (value){
                  setState(() {
                    _selectedGender = value!;
                  });
                }),
                Text("Female"),
              ],
            ),
            Row(
              children: [
                Radio(value: 'Male', groupValue: _selectedGender, onChanged: (value){
                  setState(() {
                    _selectedGender = value!;
                  });
                }),
                Text("Male"),
              ],
            ),
            const SizedBox(),
            Text(_selectedGender == 'Male' ? 'Hello Gentlemen!' : 'Hi Lady!')
          ],
        ),
      ),
    );
  }
}