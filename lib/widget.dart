import 'package:flutter/material.dart';
void main() {
  runApp( Widgets());
}
class Widgets extends StatefulWidget {
  Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  String buttonName = 'Click';
  String buttonName1 = 'Submit';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: const Text("Flutter App"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },)

            ],

          ),
          body: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,//for whole screen
                color: Colors.grey,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.red,//text color
                      primary: Colors.orange,//background color
                    ),
                    onPressed: (){
                      setState(() {
                        buttonName='Clicked';
                      });
                    },
                    child: Text(buttonName),),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,//text color
                          primary: Colors.red,//background color
                        ),
                        onPressed: (){
                          setState(() {
                            buttonName1 = "Submited";
                          });
                        }, child: Text(buttonName1))
                  ],),
              )
          ),
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
            currentIndex: currentIndex,
            onTap: (int index){
              currentIndex = index;
            },),
        )
    );
  }


}

