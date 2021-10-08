import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter Application"),
        ),

        body: Center(
          child: Text("Welcome to javatpoint"),
        ),

        /*floatingActionButton: FloatingActionButton(
          elevation: 8.0,
          child: Icon(Icons.add),
          onPressed: (){
            print("I am Floating Action Button");
          },
        ),*/

        /*persistentFooterButtons: <Widget>[
          ElevatedButton(onPressed: (){
            print("Pressed1");
          }, child: Text("Press me")
          ),

          ElevatedButton(onPressed: (){
            print("Pressed2");
          }, child: Text("Touch  me")
          ),

          ElevatedButton(onPressed: (){
            print("Pressed3");
          }, child: Text("Hit me")
          )
        ],*/

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), 
                label: ("Home")
            ),
            
            BottomNavigationBarItem(icon: Icon(Icons.search),
            label: ("Searcg")
            ),
          ],

          onTap: (int itemIndex){
            setState((){
             currentIndex = itemIndex;
            }
            );
          },
        ),
      ),
    );
  }
}
