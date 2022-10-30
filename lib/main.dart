import 'package:flutter/material.dart';
import 'package:simple_calculator/buttons.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const MyHomePage(
          title: 'CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> buttons =
  [
    'C', 'DEL', '=', '/',
    '9', '8', '7', 'x',
    '6', '5', '4', '-',
    '3', '2', '1', 'x',
    '00', '0', '.', '%'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Column(
        children: <Widget>[
          Expanded(child: Container(),
          ),
          Expanded(
              flex: 4,
              child: Container(
                  child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return MyButton(
                    buttonText: buttons[index],
                    color: Colors.black,
                    textColor: Colors.white,
                    );
              })
          )
          )
        ],
      ),
    );
  }

}