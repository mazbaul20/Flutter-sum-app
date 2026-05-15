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
  Map<String,double> FormValue = {
    "Num1":0,
    "Num2":0,
    "Num3":0,
  };

  double Sum = 0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue){
      setState(() {
        FormValue.update(InputKey, (value)=>double.parse(InputValue));
      });
      // print(FormValue);
    }

    AddAllNumber(){
      setState(() {
        Sum = FormValue['Num1']!+FormValue['Num2']!+FormValue['Num3']!;
      });
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
              Text("Sum=$Sum",style: HeadTextStyle()),
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
                  AddAllNumber();
                }, child: Text("Add"),style: AppButtonStyle(),),
              ),
            ],
          ),
      ),
    );
  }

}