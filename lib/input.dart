import 'package:flutter/material.dart';
import 'package:f2/nextpage.dart';
import 'package:intl/intl.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Student Details';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
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
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final myName = TextEditingController();
  final myEmail = TextEditingController();
  final myPhno = TextEditingController();
  late final myDob = TextEditingController();
  String? myGender = 'Female' ;
  final mySkills = TextEditingController();
  String? myBranch;
  DateTime? _selecteddate ;
  List<String> listOfValue = ['Computer', 'Mechanical', 'Electrical', 'Mechatronics', 'Artificial Intelligence','IT'];

  void _presentDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1600),
        lastDate: DateTime.now())
        .then((pickedDate){
          if(pickedDate == null){
            return;
          }
          setState(() {
            _selecteddate = pickedDate;
            final f =  DateFormat('yyyy-MM-dd ');
            myDob.text=f.format(_selecteddate!);
          });
    });
  }



  @override
  void dispose(){
    myName.dispose();
    myEmail.dispose();
    myPhno.dispose();
    myDob.dispose();
    //myGender.dispose();
    mySkills.dispose();
    //myBranch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return DraggableScrollableSheet(
      initialChildSize: 1.0,
      minChildSize: 1.0,
      maxChildSize: 1.0,
      builder:(context, scrollController){
        return SingleChildScrollView(
          controller: scrollController,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: myName,
              autofocus: true,
              decoration: InputDecoration(
                hintText: ' First Middle Last',
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: myEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
                labelText: 'Enter your email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email address';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: myPhno,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Phone Number';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: myDob,
              decoration: InputDecoration(
                hintText: 'Birth Date',
                border: OutlineInputBorder(),
                labelText: 'DOB',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Birth Date';
                }
                return null;
              },
              onTap: _presentDatePicker,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
              //Text("Gender:",style: TextStyle(fontSize: 15,color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gender:",textAlign: TextAlign.start,style: TextStyle(fontSize: 15,color: Colors.black)),

                Row(
                  children: [
                    Radio(value: 'Female', groupValue: myGender, onChanged: (value){
                      setState(() {
                        myGender=value;
                      });
                    }),
                    Text("Female"),
                    Radio(value: 'Male', groupValue: myGender, onChanged: (value){
                      setState(() {
                        myGender=value;
                      });
                    }),
                    Text('Male'),
                    Radio(value: 'Other', groupValue: myGender, onChanged: (value){
                      setState(() {
                        myGender=value;
                      });
                    }
                    ),
                    Text('Other'),
                  ],
                ),
              ],
            ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: mySkills,
              decoration: InputDecoration(
                hintText: 'Skills',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Add Skills';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
                value: myBranch,
                hint: Text('Select Branch'),
                isExpanded: true,
                onChanged: (String? newvalue){
                  setState(() {
                    myBranch = newvalue;
                  });
                },
            onSaved: (String? newvalue){
                  setState(() {
                    myBranch =newvalue;
                  });
            },
            validator: (value){
                  if(value!.isEmpty){
                    return"empty";
                  }else{
                    return null;
                  }
            }, items: listOfValue
              .map((String val) {
                return DropdownMenuItem(
                  value: val,
                    child: Text(
                      val,
                    ),
                );
            } ).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Nextpage(
                              name: myName.text,
                              email: myEmail.text,
                              phno: myPhno.text,
                              dob: myDob.text,
                              gender: myGender.toString(),
                              skills: mySkills.text,
                              branch: myBranch.toString(),
                            )),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
        );
      },
    );
  }
}