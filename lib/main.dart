import 'package:f2/widget.dart';
import 'package:flutter/material.dart';
import 'package:f2/appbar.dart';
import 'package:f2/navigate.dart';
import 'package:f2/img.dart';
import 'package:f2/roww.dart';
import 'package:f2/input.dart';
import 'package:f2/qwe.dart';
import 'package:f2/textt.dart';
import 'package:f2/scroll.dart';
import 'package:f2/implicit.dart';
import 'package:f2/gridview.dart';
import 'package:f2/radio.dart';
import 'package:f2/datepic.dart';
import 'package:f2/dropdown.dart';
import 'package:f2/stag.dart';
import 'package:f2/checkkk.dart';
import 'package:f2/cc.dart';
import 'package:f2/snack.dart';
import 'package:f2/calc.dart';
import 'package:f2/share.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget {
   var strArray = ['Row and Column','Image and assets ','AppBar',
     'Bottom Navigation','Widgets','Form','Buttons','Text','Scroll','Implicit',
     'GridView','Radio button','Date Picker','Drop Down','Stragged Animation',
     'Checkbox','Alert box','Image Slider','Snack Bar','Calculator','Shared Preference'];

   FirstRoute({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ), onPressed: () {  },
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_downward_sharp,
              color: Colors.white,
            ), onPressed: () {  },

          )
        ],
      ),
    body: ListView.builder(
      itemCount: strArray.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 50,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(_createroute());
              if(index ==0){
                //Navigator.of(context).push(_createroute());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Roww()),
                );
              }else if(index ==1){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Img()),
                );
              }else if(index == 2) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Appbar()),
                );
              }else if(index == 3) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Navigate())
                );
              }
              else if(index == 4) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Widgets())
                );
              }
              else if(index == 5) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyApp())
                );
              }
              else if(index == 6) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Buttonss())
                );
              }
              else if(index == 7) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Textt())
                );
              }
              else if(index == 8) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Scroll())
                );
              }
              else if(index == 9) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImplicitAnim())
                );
              }
              else if(index == 10) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Grdvs())
                );
              }
              else if(index == 11) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Radiob())
                );
              }
              else if(index == 12) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datpi())
                );
              }
              else if(index == 13) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dropdwn())
                );
              }
              else if(index == 14) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StaggerDemo())
                );
              }
              else if(index == 15) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage())
                );
              }
              else if(index == 16) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Alerttt())
                );
              }
              else if(index == 17) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Imgsliderss())
                );
              }
              else if(index == 18) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => snacks()) ,

                );
              }
              else if(index == 19) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Calc()) ,

                );
              }
              else if(index == 20) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Share()) ,

                );
              }
            },
            child: Card(
              child: Center(child: Text('${strArray[index]}',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 25,),)),
              //child: Center(child: Text('index${index} -->${strArray[index]}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
        ),
        );
      },
    )
    );
  }
}

Route _createroute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FirstRoute(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


class Alerttt extends StatefulWidget {
  const Alerttt({super.key});

  @override
  State<Alerttt> createState() => _AlertttState();
}

class _AlertttState extends State<Alerttt> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.transparent,
      child: AlertDialog(
        title: Text("Exit"),
        titleTextStyle:
        TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,fontSize: 20),
        actionsOverflowButtonSpacing: 20,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Yes")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("No")),
        ],
        content: Text("Are you sure you want to Exit ?"),
      ),
    );
  }
}





