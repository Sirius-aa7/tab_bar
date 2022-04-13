import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tab_bar/firstScreen.dart';
import 'secondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(500.0), // here the desired height
        child: AppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 75,),
                  Text('Flutter Tabs Demo', style: TextStyle(color: Colors.white),),
                  const CircleAvatar(
                    foregroundImage: AssetImage(
                        'assets/images/competition3.png'),
                    backgroundColor:
                    Colors.white, //Color(0xFF05FFB4),
                    radius: 30,
                  ),
                  Text('Flutter Tabs Demo2', style: TextStyle(color: Colors.white),),
                  SizedBox(height: 75,),
                  Text('Multiple field app bar and tab bar ready', style: TextStyle(color: Colors.white),),


                ],
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
              ],
            ),
          ),
          ),
          body:
          /*Column(
            children:[
          Container(
      //    width: MediaQuery.of(context).size.width,
    //height: MediaQuery.of(context).size.height * 0.4,
    decoration: BoxDecoration(
    // color: Color(0xFF1D1C1C),
    color: Colors.lightBlueAccent,
    ),
       child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 /* Text(
                   'Competition Name',
                     style: TextStyle(
                     fontFamily: 'montserrat',
                       fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                        ),
                  ),
                 Text(
                      'Details and description?',
                         style: TextStyle(
                        fontFamily: 'montserrat',
                       fontSize: 24,
                      fontWeight: FontWeight.w900,
                       color: Colors.black,
                          ),
                  ),
                SizedBox(
                        height: 200//height*0.1,
                ),*/
                /*ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                     ),
                    child: Text(
                        'JOIN!', //style: MyFont.myFontStyle.copyWith(color: Colors.white),
                          ),
                     onPressed: () {},
                  ),*/
                */TabBarView(
                  children: [
                    FirstScreen(),
                    SecondScreen(),
                  ],
                ),
                //],
              ),

          ),
       // ],
      //),
      //),

      //),

    );
  }
}
