import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new First(),
    );
  }
}

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: new AppBar(
            title: new Text("ALzheimer test Quiz"),
            backgroundColor: Colors.blue),


        body:  new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/badass.png"),
              fit: BoxFit.fill,
            )
          ),
            child: new Column(
                children: <Widget>[
                  new Text("Description",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  new Text("Alzheimer’s disease is an irreversible, progressive brain "
                      "disorder. In most people with this disease, symptoms first appear in their mid-60s. Alzheimer’s disease is the"
                      " most common cause of dementia among senior citizens.\n  \n The main aim of this game is to"
                      " predict the possibility of a person suffering from the Alzheimer's. "
                      " After compelition of several satges, conclusion is drawn on the basis of "
                      "cumulative statistics, based on the player's performance in various stages of the game.",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),textAlign: TextAlign.center,),

                  //  new Text("")],
                ]


            )
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: fun,
          label: Text('Start Game'),
          //icon: Icon(Icons.arrow_forward_ios),
        )
    );

  }
  void fun(){
    print('pressed');
  }
}
