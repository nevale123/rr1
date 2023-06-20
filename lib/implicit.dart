import 'package:flutter/material.dart';
class ImplicitAnim extends StatefulWidget {
  const ImplicitAnim({super.key});

  @override
  State<ImplicitAnim> createState() => _ImplicitAnimState();
}
const defaultwidth = 100.0;

class _ImplicitAnimState extends State<ImplicitAnim> {
  var _isZommedIn = false;
  var _buttonTitle = 'Zoom In';
  var _width = defaultwidth;
  var _curve = Curves.bounceOut;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Implicit Animation",style: TextStyle(color: Colors.white,fontSize: 16),),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(microseconds: 370,),
                  width: _width,
                  child: Image.asset(
                      "image/i1.png"
                  ),



                ),

              ],
            ),

            TextButton(
              onPressed: (){
                setState(() {
                  _isZommedIn =! _isZommedIn;
                  _buttonTitle = _isZommedIn ? 'Zoom Out' : 'Zoom In';
                  _width = _isZommedIn ?
                  MediaQuery.of(context).size.width : defaultwidth;
                  _curve = _isZommedIn ? Curves.bounceOut : Curves.bounceIn;
                });
              },
              child: Text(
                _buttonTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}