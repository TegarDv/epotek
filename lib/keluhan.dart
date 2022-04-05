import 'package:flutter/material.dart';

class Keluhan extends StatelessWidget {
  bool Checkbox1 = false;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text('Keluhan'),),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: Text("Pusing"), value: Checkbox1, onChanged: (value) {}
            ),
            CheckboxListTile(
              title: Text("Batuk"), value: Checkbox1, onChanged: (value) {}
            ),
            CheckboxListTile(
              title: Text("Pilek"), value: Checkbox1, onChanged: (value) {}
            )
          ],
        )
      ),
    );
  }
}