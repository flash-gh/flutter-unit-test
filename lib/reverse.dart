import 'package:flutter/material.dart';

class Reverse extends StatefulWidget {
  @override
  _ReverseState createState() => _ReverseState();
}

class _ReverseState extends State<Reverse> {
  TextEditingController _controller;
  String _reversed;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Reversi'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter string to reverse"),
            ),
            const SizedBox(height: 10.0),
            if (_reversed != null) ...[
              Text(
                _reversed,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
            ],
            RaisedButton(
              child: Text("Reverse"),
              onPressed: () {
                if (_controller.text.isEmpty) return;
                setState(() {
                  _reversed = reverseString(_controller.text);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

String reverseString(String initial) {
  return initial.split('').reversed.join();
}
