import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//-------coding part
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? num1 = 0,
      num2 = 0,
      result = 0;

  add() {
    setState(() {
      num1 = double.parse(controller1.text);
      num2 = double.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = double.parse(controller1.text);
      num2 = double.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = double.parse(controller1.text);
      num2 = double.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  div() {
    setState(() {
      num1 = double.parse(controller1.text);
      num2 = double.parse(controller2.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Result is $result',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.redAccent,

                ),
              ),
            ),
            Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 400),
                  child: Center(
                    child: TextField(
                      controller: controller1,
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: 'Enter the First Number',
                      ),
                    ),
                  ),
                )
            ),
            Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 400),
                  child: Center(
                    child: TextField(
                      controller: controller2,
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: 'Enter the Second Number',
                      ),
                    ),
                  ),
                )
            ),
            Container(
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {
                    add();
                    controller1.clear();
                    controller2.clear();
                  },
                      child: Text('Add', textScaleFactor: 2)
                  ),
                  ElevatedButton(onPressed: () {
                    sub();
                    controller1.clear();
                    controller2.clear();
                  },
                      child: Text('Subtract', textScaleFactor: 2)

                  ),
                  ElevatedButton(onPressed: () {
                    mul();
                    controller1.clear();
                    controller2.clear();
                  },
                      child: Text('Multiply', textScaleFactor: 2)
                  ),
                  ElevatedButton(onPressed: () {
                    div();
                    controller1.clear();
                    controller2.clear();
                  },
                      child: Text('Divide', textScaleFactor: 2)
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            )

          ],

        ),
      ),
    );
  }
}
