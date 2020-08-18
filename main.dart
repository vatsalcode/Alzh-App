import 'package:flutter/material.dart';
import 'quiz1.dart';
import './quiz1.dart';
import './vaish.dart';

void main(){
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new AnimalQuiz(),
      )
  );
}

class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text("ALzheimer test Quiz"),
        backgroundColor: Colors.blue,
      ),


      body:

      new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(


          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz,
                child: new Text("Quiz 1",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),


    );
  }

  void startQuiz(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new MyHomePage()));
    });
  }

}
class Test{
  var a="ram";
}