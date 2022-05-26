import 'package:flutter/material.dart';
class Keluhan extends StatefulWidget {
  @override
  State<Keluhan> createState() => _KeluhanState();
}
class _KeluhanState extends State<Keluhan> {
  bool Checkbox1 = false;
  bool Checkbox2 = false;
  bool Checkbox3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keluhan'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text(
              'Pilih keluhan yang anda derita',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          CheckboxListTile(
              title: const Text("Pusing"),
              value: Checkbox1,
              onChanged: (value) {
                setState(() {
                  Checkbox1 = value!;
                });
              }),
          CheckboxListTile(
              title: const Text("Batuk"),
              value: Checkbox2,
              onChanged: (value) {
                setState(() {
                  Checkbox2 = value!;
                });
              }),
          CheckboxListTile(
              title: const Text("Pilek"),
              value: Checkbox3,
              onChanged: (value) {
                setState(() {
                  Checkbox3 = value!;
                });
              }),
          ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, '/keluhan');
            },
            child: Text('LANJUTKAN'),
          ),
          const Text(
              'Saran obat untuk dibeli :',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            Container( 
                child: false? //first check if loading is true or false
                        CircularProgressIndicator(): //show progress on loading = true
                            Checkbox1?Text("Saran obat pusing = PoldanMIG"): //when loading = false, and then check error is true or false
                              Text("Anda belum memilih keluhan"), //if loading = false and error = false, then show this text
            )
        ],
      )),
    );
  }
}