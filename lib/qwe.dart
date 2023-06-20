import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Buttonss extends StatefulWidget {
  const Buttonss({super.key});

  @override
  State<Buttonss> createState() => _ButtonssState();
}

class _ButtonssState extends State<Buttonss> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Button Types",textAlign:TextAlign.center, style: (TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
            backgroundColor: Colors.blueGrey,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: (){
                  Navigator.pop(context);
                }, ),
            ],
          ),
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.black.withOpacity(0.04);
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return Colors.blue.withOpacity(0.12);
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () { },
                      child: Text('TextButton')
                  ),

                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Text("Click Here"),
                    onPressed: (){
                      print('Text button is tapped!');},
                    onLongPress: (){
                      print("Long tapped");
                    },
                  ),
                  ElevatedButton(
                      child: Text("Click Here"),
                      onPressed: (){
                        print("Elevated button clicked");
                      },

                      ),
                  OutlinedButton(
                      onPressed:(){
                        print("OutlinedButton Clicked");
                      } ,
                      child: Text("Click Here")
          ) ,

                ],
              ),
            ),

          ),
        )


    );

  }
}


