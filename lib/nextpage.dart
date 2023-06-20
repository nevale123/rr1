import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  late String name,email,phno,dob,gender,skills,branch;
  Nextpage({super.key,
    required this.name,required this.email,required this.phno,
    required this.dob,required this.gender,required this.skills,required this.branch});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    final myName = TextEditingController(text:widget.name);
    final myEmail = TextEditingController(text: widget.email);
    final myPhno = TextEditingController(text: widget.phno);
    final myDob = TextEditingController(text: widget.dob);
    final myGender = TextEditingController(text: widget.gender);
    final mySkills = TextEditingController(text: widget.skills);
    final myBranch = TextEditingController(text: widget.branch);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Hello ${widget.name} your Details ',
            ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Name is : ${widget.name}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Email id is : ${widget.email}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Phone Number : ${widget.phno}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Birth Date : ${widget.dob}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Gender : ${widget.gender}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Skills : ${widget.skills}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Branch : ${widget.branch}',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
              ),
          ]
          )
        ),

    )
    );
  }
}
