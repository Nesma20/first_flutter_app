import 'package:flutter/material.dart';
// stateless widget provide one class that can provide a widget
// build function calls one time
// stateful contains 2 classes
// 1. first class provide a widget
// 2. second class provide a state from this widget
// second one is responsible for rebuilding the ui

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}
//to make an object from the stateful
// 1. constructor called
// 2. initState method
// 3. build method
class _CounterScreenState extends State<CounterScreen> {
int counter = 0;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              setState(() {
                counter --;

              });

            }, child: Text("MINUS")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$counter',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30.0),
              ),
            ),
            TextButton(onPressed: () {

              setState(() {
                counter++;

              });

            }, child: Text("PLUS"))
          ],
        ),
      ),
    );
  }
}
