
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './quiz1.dart';
import './jindal.dart';
_MyHomePageState h=new _MyHomePageState();
Give g=new Give();

/*void main() => runApp(new MyApp());
 b
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal details',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}*/

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'Yes','No'];
  String car = '';
  String name;
  String phone;
  String age;
  String email;
  String bm;
  String pin;
  String city;
  String by;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('personal details'),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',


                    ),
                    maxLength: 20,

                    onSubmitted: (String value){
                      name = value;
                    } ,
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your Birth Month',
                      labelText: 'Birth Month',
                    ),
                    keyboardType: TextInputType.text,
                    onSubmitted: (String value){
                      bm = value;
                    } ,
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your Birth Year',
                      labelText: 'Year of Birth',
                    ),
                    keyboardType: TextInputType.datetime,
                    maxLength: 4,
                    onSubmitted: (String value){
                      by = value;
                    } ,
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    onSubmitted: (String value){
                      phone = value;
                    } ,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.fiber_pin),
                      hintText: 'Enter your city pin code',
                      labelText: 'Pin code',
                    ),
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    onSubmitted: (String value){
                      pin = value;
                    } ,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_city),
                      hintText: 'Enter your city',
                      labelText: 'City',


                    ),
                    maxLength: 20,
                    onSubmitted: (String value){
                      city = value;
                    } ,
                  ),
                  new TextField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,

                    onSubmitted: (String value){
                      email = value;
                    } ,

                  ),
                  new TextField(decoration: const InputDecoration(
                    icon: const Icon(Icons.perm_identity),
                    hintText: 'Enter your Age',
                    labelText: 'Age',

                  ),maxLength: 3,
                    keyboardType: TextInputType.number,
                    onSubmitted: (String value){
                      age = value;
                    } ,

                  ),
                  new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.directions_car),
                          labelText: 'Do you own a car',
                        ),

                        isEmpty: car == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: car,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                car = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                          child: const Text('Submit'),
                          onPressed: fun
                      )),
                ],
              ))),
    );
  }
  void fun(){

    g.n=name.toString().toUpperCase();
     g.b=bm.toString().toUpperCase();
     g.p=phone.toString().toUpperCase();
     g.e=email.toString().toUpperCase();
     g.a=age.toString().toUpperCase();
     g.c=car.toString().toUpperCase();
     g.y=by.toString().toUpperCase();
     g.cit=city.toString().toUpperCase();
     g.code=pin.toString().toUpperCase();
    print(name);
    print(bm);
    print(by);
    print(phone);
    print(email);
    print(age);
    print(car);
    print(pin);
    print (city);
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HomePage()));
  }
}
class Give{
  String n=",";
  String b=",";
  String p=",";
  String e=",";
  String a=",";
  String c=",";
  String y=",";
  String cit=",";
  String code=",";
}/*
class Give{
  String n='vishal';
  String b='A';
  String p='7895834548';
  String e='vgguptago9@gmail.com';
  String a='20';
  String c='yes';
  String y='1999';
  String cit='aligarh';
  String code='202001';
}*/

