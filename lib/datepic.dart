import 'package:flutter/material.dart';

void main() {
  runApp(const Datpi());
}

class Datpi extends StatefulWidget {
  const Datpi({Key? key}) : super(key: key);

  @override
  State<Datpi> createState() => _DatpiState();
}

class _DatpiState extends State<Datpi> {
  DateTime? _selectedDate;
  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1600),
        lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        _selectedDate = pickedDate;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Types",textAlign:TextAlign.center, style: (TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
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
        body: Column(children: [
          // Show the Date Picker when this button clicked
          ElevatedButton(
              onPressed: _presentDatePicker, child: const Text('Select Date')),

          // display the selected date
          Container(
            padding: const EdgeInsets.all(30),
            child: Text(
              _selectedDate != null
                  ? _selectedDate.toString()
                  : 'No date selected!',
              style: const TextStyle(fontSize: 30),
            ),
          )
        ]),
      ),
    );
  }
}
