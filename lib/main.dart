import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

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

    ClearAllNumber(){
      setState(() {
        controller1.clear();
        controller2.clear();
        controller3.clear();
        FormValue = {"Num1": 0, "Num2": 0, "Num3": 0};
        Sum = 0;
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
                controller: controller1,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (value){
                  // set value to Num2
                  MyInputOnChange("Num2",value);
                },
                decoration: AppInputStyle("Second Number"),
                controller: controller2,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (value){
                  // set value to Num3
                  MyInputOnChange("Num3",value);
                },
                decoration: AppInputStyle("Third Number"),
                controller: controller3,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        ClearAllNumber();
                      },
                      child: Text("Clear"),
                      style: AppButtonStyle(Colors.red),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: AddAllNumber,
                      child: Text("Add"),
                      style: AppButtonStyle(Colors.blue),
                    ),
                  ),

                ],
              ),
            ],
          ),
      ),
    );
  }

}