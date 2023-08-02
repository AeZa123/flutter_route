import 'package:flutter/material.dart';
import 'package:routing_flutter/home.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(
                  context, 
                  MaterialPageRoute(builder: (context) => Home())
                  );
              },
              child: Text('back'),
            )
          ],
        ),
      ),
    );
  }
}

