import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyHomePage(),));
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Checkbox Example'),
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
        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                SizedBox(width: 10,),
                Text('Checkbox with Header and Subtitle',style: TextStyle(fontSize: 20.0), ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 4:30 AM every day'),
                  subtitle: Text('Ringing after 12 hours'),
                  value: this.valuefirst,
                  onChanged: (value) {
                    setState(() {
                      this.valuefirst = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:00 AM every day'),
                  subtitle: Text('Ringing after 12 hours'),
                  value: this.valuesecond,
                  onChanged: (value) {
                    setState(() {
                      this.valuesecond = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:30 AM every day'),
                  subtitle: Text('Ringing after 12 hours'),
                  value: this.valuethird,
                  onChanged: (value) {
                    setState(() {
                      this.valuethird = value!;
                    });
                  },
                ),
                ElevatedButton(

                    onPressed: () {  },
                    child: Text('Submit'))
                      /*showDialog(
                        context: context,
                        builder: (value) {
                          return SimpleDialog(
                           onPressed: (){

                           }
                          );

                        },
                      );*/


              ],
            )
        ),
      ),
    );
  }
}