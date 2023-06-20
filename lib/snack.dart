import 'package:flutter/material.dart';
import 'package:f2/main.dart';
class snacks extends StatefulWidget {
  const snacks({super.key});

  @override
  State<snacks> createState() => _snacksState();
}

class _snacksState extends State<snacks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);

            }, icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ))
          ],
        ),
        body: Builder(
          builder:(BuildContext context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text('Snack Bar',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('This is the Snack Bar'),
                        ),
                      );
                    },
                  ),
                  ButtonTheme(
                    height: 900.0,
                    buttonColor: Colors.yellowAccent,
                    child: ElevatedButton(
                      child: Text("Submit",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Successfully Submitted',style: TextStyle(fontSize: 15),),
                          ),
                        );
                      },
                    ),
                  ),


                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
