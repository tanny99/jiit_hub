import 'package:flutter/material.dart';
class HubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('HubsPage'),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageColumn(title: 'Yoga',about: '...About...',image: 'Assets/yoga.PNG',),
              ImageColumn(title: 'Jhankar',about: '...About...',image: 'Assets/jhankar.PNG',),
              ImageColumn(title: 'Radiance',about: '...About...',image: 'Assets/radiance.PNG',),
              ImageColumn(title: 'Parola',about: '...About...',image: 'Assets/parola.jpeg',),
              ImageColumn(title: 'Thespian',about: '...About...',image: 'Assets/thespian.PNG',),
              ImageColumn(title: 'Sports',about: '...About...',image: 'Assets/sports.PNG',),
              ImageColumn(title: 'μCR',about: '...About...',image: 'Assets/mucr.PNG',),
              ImageColumn(title: 'Jpeg',about: '...About...',image: 'Assets/jpeg.PNG',),
              ImageColumn(title: 'Grafitas',about: '...About...',image: 'Assets/grafitas.PNG',),
              ImageColumn(title: 'CICE',about: '...About...',image: 'Assets/cice.PNG',),
              ImageColumn(title: 'Crecendo',about: '...About...',image: 'Assets/crecendo.PNG',),
              ImageColumn(title: 'Ribose',about: '...About...',image: 'Assets/ribose.PNG',),
              ImageColumn(title: 'Multimedia',about: '...About...',image: 'Assets/multimedia.PNG',),
              ImageColumn(title: 'Kalakriti',about: '...About...',image: 'Assets/kalakriti.PNG',),
              ImageColumn(title: 'IOE',about: '...About...',image: 'Assets/ioe.PNG',),
              ImageColumn(title: 'Icreate',about: '...About...',image: 'Assets/icreate.PNG',),
              ImageColumn(title: 'gdg',about: '...About...',image: 'Assets/gdg.PNG',),
              ImageColumn(title: 'Expressions',about: '...About...',image: 'Assets/expressions.PNG',),
              ImageColumn(title: 'Adwitya',about: '...About...',image: 'Assets/adwitya.PNG',),
              ImageColumn(title: 'Eco&Buss',about: '...About...',image: 'Assets/eco&buss.PNG',),

            ],
          ),

        ),

      ),
    );
  }
}

class ImageColumn extends StatelessWidget {
  late String title,about,image;
  ImageColumn({required this.title,required this.about,required this.image,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('$title'),
        ),
        Container(
          child: Text('$about'),
        ),
        Image(image: AssetImage('$image')),


      ],
    );
  }
}