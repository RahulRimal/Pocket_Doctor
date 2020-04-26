import 'package:flutter/material.dart';



//void main()
//{
//  runApp(OurApp());
//}
//

class OurApp extends StatelessWidget {

  final String username;
  final String password;

  OurApp({this.username, this.password});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Flutter",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Profile")),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){

              },
            ),
          ],


//          leading: Icon(Icons.settings),


        ),

        drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Item 1"),
                ),

                ListTile(
                  title: Text("Item 2"),
                ),
              ],
            )
        ),



        body: Column(
          children: <Widget>[

//                      ---------------------------------- Profile Picture Section --------------------------------------------

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//            Image.asset("sprites/diyalo.jpg"),
//          Image.network('https://picsum.photos/250?image=9'),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage('https://picsum.photos/250?image=9'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text("Profile Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ],

              ),
            ),


//                      ---------------------------------- Status Icon Section --------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,

                                ),
                                child: Icon(Icons.directions_bike,
                                  size: 35.0,
                                ),

                              ),

                              Text("Activity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),)

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,

                                ),
                                child: Icon(Icons.av_timer,
                                  size: 35.0,
                                ),

                              ),

                              Text("History",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),)

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,

                                ),
                                child: Icon(Icons.local_hospital,
                                  size: 35.0,
                                ),

                              ),

                              Text("Health",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),)

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

              ],
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),

//            Text(username),
//            Text(password),

          ],
        ),


      ),
    );
  }
}