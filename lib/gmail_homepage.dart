import 'package:flutter/material.dart';
import 'package:sarath/page1.dart';
import 'package:sarath/page2.dart';
import 'package:sarath/page3.dart';

class GmailHomePage extends StatefulWidget {
  const GmailHomePage({super.key});

  @override
  State<GmailHomePage> createState() => _GmailHomePageState();
}

class _GmailHomePageState extends State<GmailHomePage> {
  @override
  int count=0;
  List<Widget>pages=[
    GmailHomePage(),
    Page1(),
    Page2(),
    Page3()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,color: Colors.black,),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20,top: 5,bottom: 5),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),]
            ),
            child: Icon(Icons.person,color: Colors.grey,),
          )
        ],
        title: Text("Search in male",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Message 1"),
            subtitle: Text("Subtitle 1"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("05:45 am"),
                Icon(Icons.star_border,color: Colors.black,)
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Message 2"),
            subtitle: Text("Subtitle 2"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("06:32 am"),
                Icon(Icons.star_border,color: Colors.black,)
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Message 3"),
            subtitle: Text("Subtitle 3"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("07:25 am"),
                Icon(Icons.star_border,color: Colors.black,)
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Message 4"),
            subtitle: Text("Subtitle 4"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("03:15 am"),
                Icon(Icons.star_border,color: Colors.black,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
