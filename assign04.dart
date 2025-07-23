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
      title: 'Assignment4',
      home: CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  bool _isChecked0 = false;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  int count=0;
  void incrementCounter(){
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10201E),
      appBar: AppBar(
        backgroundColor: Color(0xFF10201E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Interactive Demo' ,
              style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Counter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 15,),
                  Text('Tap the button to increment the counter.',style: TextStyle(fontSize: 16,color: Colors.white70),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text('Count:',style: TextStyle(fontSize: 15,color: Colors.white),),
                      SizedBox(width: 7,),
                      Text('$count',style: TextStyle(fontSize: 15,color: Colors.white),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(
                      onPressed: incrementCounter,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                      child:Text('Increment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 17,),
                  Text('Toggle Visibility',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 15,),
                  Text('Toggle the visibility of the widget below.',style: TextStyle(fontSize: 16,color: Colors.white70),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Show Widget',style: TextStyle(fontSize: 15,color: Colors.white),),
                      Switch(value: _isChecked0,
                        onChanged: (value)=>setState(()=>_isChecked0=value),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/scene.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Text('Task List',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 15,),
                  Text('Mark tasks as completed by checking the boxes.',style: TextStyle(fontSize: 16,color: Colors.white70),),
                  SizedBox(height: 18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Task1:Buy groceries',style: TextStyle(fontSize: 16,color: Colors.white70),),
                      Checkbox(
                          value: _isChecked1,
                          onChanged: (value){
                            setState(() {
                              _isChecked1=value!;
                            });
                          }
                      ),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Task2:Finish report',style: TextStyle(fontSize: 16,color: Colors.white70),),
                      Checkbox(
                          value: _isChecked2,
                          onChanged: (value){
                            setState(() {
                              _isChecked2=value!;
                            });
                          }
                      ),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Task3:Call mom',style: TextStyle(fontSize: 16,color: Colors.white70),),
                      Checkbox(
                          value: _isChecked3,
                          onChanged: (value){
                            setState(() {
                              _isChecked3=value!;
                            });
                          }
                      ),

                    ],
                  ),

                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}