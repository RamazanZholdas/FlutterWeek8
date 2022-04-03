import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    
    Color getColor1() {
      var rng = Random();
      return Color.fromRGBO(rng.nextInt(255), rng.nextInt(255), rng.nextInt(255), 1);
    }

    Color getColor2() {
      var rng = Random();
      return Color.fromRGBO(rng.nextInt(255), rng.nextInt(255), rng.nextInt(255), 1);
    }
    
    Widget buildSwitch() => Transform.scale(
      scale: 2,
      child: Switch(
        activeColor: Colors.blueAccent,
        value: value,
        activeTrackColor: Colors.blue,
        inactiveTrackColor: Colors.blue,
        onChanged: (value){
          setState(() {
            getColor1();
            getColor2();
          });
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text("Home Provider",
              style: TextStyle(color: getColor1(),
              ),
            ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: getColor2()
              ),
            ),
            const SizedBox(height: 30,),
            buildSwitch(),
          ],
        ),
      )
    );
  }
}
