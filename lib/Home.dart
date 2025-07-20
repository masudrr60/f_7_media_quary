import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final List<String> categories = [
    'Rahat','Rah','fafa','dafda',  'Rahat','Rah','fafa','dafda',
    'Rahat','Rah','fafa','dafda',    'Rahat','Rah','fafa','dafda'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:Text("Wrap example")),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: categories.map((singleItem){
                return Chip(label: Text(singleItem),
                  backgroundColor:Colors.red,
                );
            }).toList(),
            ),
          ),
          SizedBox(height: 10,),

//****************************** layoutBuilder***************************

           LayoutBuilder(
            builder: (context, con) {
              if (con.maxWidth > 600) {
                return Center(
                  child: Text("This is tablet layout"),
                ); // Center
              } else {
                return Center(
                  child: Text("This is mobile layout",style:TextStyle(fontSize:30),),
                ); // Center
              }
            }),

          SizedBox(height: 20,),


          Expanded(child: Padding(padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              children:List.generate(
                100,
                  (index) =>Container(
                    color: Colors.cyanAccent,
                  )),
            ),
          ),),
          SizedBox(
            height: 10,
          ),

        ],
      )
    );
  }
}
