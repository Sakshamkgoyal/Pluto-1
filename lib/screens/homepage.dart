import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pluto/Services/authentication_service.dart';
import 'package:pluto/main.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pluto Home",
        style: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(38, 1, 1, 1),
          fontSize: 24),
        ),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(242, 204, 201, 0.5),
      elevation: 20,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20),),
            Container(
              //color: Colors.amber,
              //width: 200,
              //height: 200,
              child: Column(
                children: [
                  Image.network("https://miro.medium.com/max/1050/0*_CKMlXRDR_lFCUYU.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyApp()));
                        context.read<AuthenticationService>().signOut();
                      }),
                      Padding(padding: EdgeInsets.all(10)),
                      IconButton(icon: Icon(Icons.thumb_up), onPressed: (){
                        print("object");
                      })
                     // Icon(Icons.thumb_up),
                    ],
                  ),
                ],
              ),
              )
          ],
        ),
      )
    );
  }
}