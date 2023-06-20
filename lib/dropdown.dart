import 'package:flutter/material.dart';

void main() {
  runApp(const dropdwn());
}

class dropdwn extends StatefulWidget {
  const dropdwn({super.key});

  @override
  State<dropdwn> createState() => _dropdwnState();
}

class _dropdwnState extends State<dropdwn> {
  List<String>items = ['','Infosys','TCS','Wipro','L&T','Zepto'];
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down",textAlign:TextAlign.center, style: (TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
        backgroundColor: Colors.red,
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
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Center(
          child: Column(
            children: [
              Text("Enter Company Name",
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.black),),
              Center(
                child: DropdownButton<String>(
                  iconSize: 50,
                  //elevation: 15,
                  value: dropdownValue,
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(value: value,
                      child: Text(value, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 15),),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue ?? '';
                    });
                  },
                  dropdownColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
