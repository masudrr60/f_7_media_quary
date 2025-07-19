import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  
  
  Widget build(BuildContext context) {

    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:Text("Media Query")),
      body: Center(
        child: Container(
          height: screenheight * 5,
          width: screenwidth *1,
          decoration: BoxDecoration(color: Colors.cyanAccent),
          child: Center(
            child: Text("Rahat fuck you",
              style: TextStyle(
                  fontSize: screenwidth *0.09,
                  color: Colors.red,
                fontWeight: FontWeight.bold,),
            ),
          ),
        ),

      ),
    );
  }
}
