import 'package:flutter/material.dart';

/// Flutter code sample for [DefaultTextStyle].

void main() => runApp(const Textt());

class Textt extends StatelessWidget {
  const Textt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DefaultTextStyle.merge Sample'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.pop(context);
              }, ),
          ],),
        // Inherit MaterialApp text theme and override font size and font weight.
        body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    'Hello, How are you?',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),

                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                        TextSpan(text: ' world!'),
                      ],
                    ),
                  ),



                ],


            ),

        ),
              )
          );



  }
}


/*
        body: const Center(
          child: SelectionArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Selectable text'),
                SelectionContainer.disabled(child: Text('Non-selectable text')),
                Text('Selectable text'),
              ],
            ),
          ),
        ),
 */

