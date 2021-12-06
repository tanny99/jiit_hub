import 'package:flutter/material.dart';
import 'HubsPage.dart';
import 'AcademicsPage.dart';
import 'GeneralPage.dart';
class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width:  double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/jaypee_building.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: SizedBox(height: 70,width: 250,
                  child: TextButton(
                    onPressed:()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => AcademicsPage()),);
                    },
                    child: Text('ACADEMICS',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: SizedBox(height: 70,width:250,
                  child: TextButton(
                    onPressed:()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => HubsPage()),);
                    },
                    child: Text('HUBS',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),
              Container(
                child: SizedBox( height: 70, width: 250,
                  child: TextButton(
                    onPressed:()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => GeneralPage()),);
                    },
                    child: Text('GENERAL',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),

            ],
          ) /* add child content here */,
        ),
      )
    );
  }
}
