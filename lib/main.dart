import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';
import 'package:upload_file_ui/widgets/card_textfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var source;
  var mapping;
  var target;
  String code = "";
  // List<String> labels = ["Codename Black", "Codename Red", "Codename Blue"];
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(8, 68, 118, 1),
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.person),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "CODENAME BLACK",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  fit: FlexFit.tight,
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75.0),
                    topRight: Radius.circular(75.0)),
              ),
              child: ListView(
                  primary: false,
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 45.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.66,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // ToggleBar(
                                  //   labels: labels,
                                  //   textColor: Colors.black,
                                  //   backgroundColor: Colors.transparent,
                                  //   labelTextStyle: TextStyle(
                                  //       // fontSize: 20,
                                  //       fontWeight: FontWeight.w500),
                                  //   selectedTextColor: Colors.black,
                                  //   selectedTabColor: Colors.blue,
                                  //   onSelectionUpdated: (index) =>
                                  //       setState(() => currentIndex = index),
                                  // ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    child: Center(
                                      child: Text(
                                        'Upload the required source, mapping and target files.',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GridView.count(
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      // mainAxisSpacing: 0,
                                      // scrollDirection: Axis.vertical,
                                      // padding: EdgeInsets.all(25),
                                      children: <Widget>[
                                        const MyCard(
                                          Colors.pink,
                                          'Source File',
                                        ),
                                        const MyCard(
                                          Colors.orangeAccent,
                                          'Mapping File',
                                        ),
                                        const MyCard(
                                          Colors.black45,
                                          'Target File',
                                        ),
                                        // const SizedBox(),
                                      ],
                                    ),
                                  )
                                ]))),
                    Center(
                      child: submit(),
                    ),
                    Container(
                      margin: EdgeInsets.all(50),
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ), //Offset
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(75.0),
                            bottomRight: Radius.circular(75.0)),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "Generated Code",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.5,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                            // padding: const EdgeInsets.all(8.0),
                            child: email)
                      ]),
                    )
                  ])),
        ]));
  }

  Widget submit() {
    return Container(
      width: 400,
      padding: EdgeInsets.all(100.0),
      child: Card(
        elevation: 5,
        color: Colors.blue,
        margin: EdgeInsets.all(10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: new InkWell(
            onTap: () {
              setState(() {
                code = "WE GOT THIS RIGHT";
              });
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
                      "Submit",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.5,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
