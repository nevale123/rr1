import 'package:flutter/material.dart';
class Roww extends StatefulWidget {
  const Roww({super.key});

  @override
  State<Roww> createState() => _RowwState();
}

class _RowwState extends State<Roww> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Insert Image Demo',
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
        body: Center(
            child: Container(
              color: Colors.white,
              width: 240,
              height: 300,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    child: Image.network(
                      "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Umberla for sale",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text("200 bought this")
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("4.5"),
                              Icon(
                                Icons.star,
                                size: 14,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text("Add To Cart"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          child: Text("Buy Now"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
        ),
      );

  }
}
