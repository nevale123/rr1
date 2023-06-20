import 'package:flutter/material.dart';
void main() => runApp(const Img());

class Img extends StatelessWidget {
  const Img({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Insert Image Demo',
          ),
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
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('image/i1.png',
                height: 400,
                width: 120,
                scale: 1.5,
                color: Color.fromARGB(255, 15, 147, 59),
              ),
              Image.asset(
                'image/i2.jfif',
                height: 400,
                width: 110,
              ),
              Image.asset(
                "image/i3.jfif",
                height:400,
                width: 120,
              ),
            ], //<Widget>[]
          ), //Column
        ), //Center
      ),
    );
  }
}