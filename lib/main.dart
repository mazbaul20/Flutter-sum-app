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
  Map<String,String> FormValue = {
    "Num1":"",
    "Num2":"",
    "Num3":"",
  };

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue){
      setState(() {
        FormValue.update(InputKey, (value)=>InputValue);
      });
      // print(FormValue);
    }

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
                onChanged: (value){
                  // set value to Num1
                  MyInputOnChange("Num1",value);
                },
                decoration: AppInputStyle("First Number"),
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (value){
                  // set value to Num2
                  MyInputOnChange("Num2",value);
                },
                decoration: AppInputStyle("Second Number"),
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (value){
                  // set value to Num3
                  MyInputOnChange("Num3",value);
                },
                decoration: AppInputStyle("Third Number"),
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