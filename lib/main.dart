import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Sum=0",style: HeadTextStyle()),
              SizedBox(height: 20,),
              TextFormField(
                decoration: AppInputStyle("First Number"),
              ),
              SizedBox(height: 20,),
              TextFormField(decoration: AppInputStyle("Second Number"),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){

                }, child: Text("Add"),style: AppButtonStyle(),),
              ),
            ],
          ),
      ),
    );
  }

}