import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     /*title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),*/
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values=new RangeValues(1,100);
  //RangeLabels labels = new RangeLabels(values.start.toString(),values.end.toString());

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = new RangeLabels(values.start.toString(),values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RANGE SLIDER",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
        backgroundColor: Colors.grey.shade700,
      ),
      body: RangeSlider(
        min: 0,
        max: 100,
        values: values,
        labels: labels,
        divisions: 100,
        activeColor: Colors.red,
        inactiveColor: Colors.black,
        onChanged: (newValue){
          values=newValue;
          print('${newValue.start},${newValue.end}');
          setState(() {

          });
        },
      ),
    );
  }
}


