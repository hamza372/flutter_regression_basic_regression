import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();
  String number = '?';
  String result = '?';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/wall.jpg"), fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            'images/board.jpg',
                            height: 200,
                            width: 350,
                          ),
                        ),
                        Text(
                          "2($number) - 1 = $result",
                          style: TextStyle(color: Colors.white, fontSize: 30,fontFamily: 'GS'),
                        )
                      ],
                      alignment: Alignment.center,
                    ),
                    //Container(height: 100,width: 100,decoration: BoxDecoration(color: Colors.black),alignment: Alignment.bottomRight,)
                    Column(
                      children: [
                        Container(
                          child: TextField(
                            controller: textEditingController,
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                          width: 100,
                        ),
                        FlatButton(
                          child: Text('Answer'),
                          onPressed: () {
                            setState(() {
                              number = textEditingController.text;
                            });
                          },
                          color: Colors.black,
                          textColor: Colors.white,
                        )
                      ],
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ))),
    );
  }

  //TODO load model

  //TODO do inference

}
