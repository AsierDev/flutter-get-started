import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HelloYou(),
    );
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';
  final _currencies = ['Dollars', 'Euro', 'Pounds'];
  String _currency = 'Euro';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Insert your name'),
                onChanged: (String string) {
                  setState(() {
                    name = string;
                  });
                },
              ),
              DropdownButton<String>(
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                value: _currency,
                onChanged: (String value) {
                  _onDropdownChange(value);
                },
              ),
              name.length != 0 ? Text('Hello ' + name + '!') : Text('')
            ],
          ),
        ));
  }

  _onDropdownChange(String value) {
    setState(() {
      this._currency = value;
    });
  }
}
