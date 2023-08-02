import 'package:flutter/material.dart';
import 'package:routing_flutter/home.dart';


class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
           Navigator.pushReplacement(
            context, 
            MaterialPageRoute(builder: (context) => Home())
          );
          },
          child: Text('back'),
        ),
      ),
    );
  }
}


