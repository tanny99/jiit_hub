import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/CSEMainPage.dart';
import 'HubsPage.dart';
import 'CSEFaculty.dart';
import 'BIO.dart';
import 'MyWork.dart';
import 'ECE.dart';
class AcademicsPage extends StatelessWidget {
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
                image: AssetImage("Assets/aca_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            //
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 50),
                child: SizedBox(height: 70,width:250,
                  child: TextButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => CSEMainPage()),);
                    },
                    child: Text(
                      'CSE & IT',
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
                child: SizedBox(height: 70, width: 250,
                  child: TextButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ECEPage()),);
                    },
                    child: Text(
                        'ECE',
                        style: TextStyle(color: Colors.white, fontSize: 20)
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),
              Container(
                child: SizedBox(height: 70, width: 250,
                  child: TextButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => BiotechPage()),);
                    },
                    child: Text(
                        'Biotechnology',
                        style: TextStyle(color: Colors.white,fontSize: 20)
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top:50),
                child: SizedBox(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context){return MyWork(indexx: 2,);}));
                          },
                        child: Icon(Icons.arrow_back, ),
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
