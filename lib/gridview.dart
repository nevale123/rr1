import 'package:flutter/material.dart';
class Grdvs extends StatefulWidget {
  const Grdvs({super.key});

  @override
  State<Grdvs> createState() => _GrdvsState();
}

class _GrdvsState extends State<Grdvs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Flutter GridView',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ))
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://wallup.net/wp-content/uploads/2018/10/06/196814-birds-bluebirds.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}

