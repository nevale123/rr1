import 'package:f2/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(const Imgsliderss());
}

class Imgsliderss extends StatelessWidget {
  const Imgsliderss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // a list of images' URLs
  final List data = [
    {
      "title": "Image 1",
      "url":
      "https://th.bing.com/th/id/OIP.DihSjmmsgAfwxnv0fuWFLgHaEj?pid=ImgDet&w=199&h=122&c=7&dpr=1.3"
    },
    {
      "title": "Image 2",
      "url":
      "https://th.bing.com/th/id/OIP.7dhdBHSekqt741be6R3nTAHaEo?w=295&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "title": "Image 3",
      "url":
      "https://th.bing.com/th/id/OIP.hN2fQaVyrujXfJYetUUvdAHaEB?w=307&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "title": "Image 4",
      "url":
      "https://th.bing.com/th/id/OIP.q-LGmXr7aJRq_rtX1eZ45gAAAA?w=271&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "title": "Image 5",
      "url":
      "https://th.bing.com/th/id/OIP.jCeh8ekWwCvOvOJVeYjxtwHaFi?w=208&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
    {
      "title": "Image 6",
      "url":
      "https://th.bing.com/th/id/OIP.xEfLHzgD2gnzDZQqoIzm0QHaFj?w=226&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Slider'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => FirstRoute()));


          }, icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Implement the image carousel
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                /*  autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 400),*/
                height: 300,
              ),
              items: data.map((item) {
                return GridTile(
                  footer: Container(
                      padding: const EdgeInsets.all(25),
                      color: Colors.black54,
                      child: Text(
                        item["title"],
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                  child: Image.network(item["url"], fit: BoxFit.cover),
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}