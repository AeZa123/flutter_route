import 'package:flutter/material.dart';
import 'package:routing_flutter/about.dart';
import 'package:routing_flutter/contact.dart';
// import 'package:routing_flutter/setting.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => About(),
                    settings: const RouteSettings(
                      arguments: 'นี่คือข้อความที่มาจากหน้า home'
                    ),  
                  ));
              },
              child: Text('go to about'),

            ), 
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => Contact() ));
              },
              child: Text('go to replacePage contact'),

            ),
            ElevatedButton(
              onPressed: (){
               Navigator.pushNamed(context, '/setting');
              },
              child: Text('go to setNameRoute setting'),

            ),
          ],
        ),
        
      ),
    );
  }
}