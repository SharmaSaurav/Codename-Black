import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class MyCard extends StatelessWidget {
  const MyCard(
    this.backgroundColor,
    this.title,
  );

  final Color backgroundColor;
  final String title;
  // final file;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // padding: EdgeInsets.all(120),
      child: Card(
        elevation: 5,
        color: backgroundColor,
        margin: EdgeInsets.all(120),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: new InkWell(
            onTap: () async {
              // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //   content: Text('Uploaded'),
              // ));
              var picked = await FilePicker.platform.pickFiles();
              if (picked == null) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Please upload required files'),
                ));
              }
              // else {
              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //     content: Text('Uploaded'),
              //   ));
              // }
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // SizedBox(height: 60),
                  Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.5,
                          color: Colors.white),
                    ),
                  ),
                  // Text(
                  //   'Upload file',
                  //   textAlign: TextAlign.start,
                  //   style: TextStyle(
                  //     color: Colors.grey[800],
                  //     fontWeight: FontWeight.w100,
                  //     fontSize: 12.5,
                  //   ),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}

final email = TextField(
  maxLines: 37,
  autofocus: false,
  style: TextStyle(fontSize: 15.0, color: Colors.black),
  decoration: InputDecoration(
    filled: true,
    // suffixIcon: Icon(Icons.search),
    fillColor: Colors.white,
    hintText: 'Get your CODE....LESGOOO',
    contentPadding: const EdgeInsets.all(8),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(25.7),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(25.7),
    ),
  ),
);
