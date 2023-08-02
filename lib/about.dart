import 'package:flutter/material.dart';


class About extends StatefulWidget {
  const About({super.key});
  
  
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  
  @override
  Widget build(BuildContext context) {

    
    final String msg = ModalRoute.of(context)?.settings.arguments as String;
    // Map <String, Object>data = {}; // as the arguments passed from 
    // data = {"dataKey":ModalRoute.of(context).settings.arguments};
    

    return Scaffold(
      appBar: AppBar(
        title: Text('About page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}


