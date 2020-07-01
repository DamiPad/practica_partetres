/*import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

 Widget myLayoutWidget() {
      return Column(
        children: [
          Text('Hello World'),
          RaisedButton(
            child: Text('Button'),
            onPressed: (){},
          ),
        ],
      );
 }*/

/*import 'package:flutter/material.dart';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Material App',
       home: Scaffold(
         appBar: AppBar(
           title: Text('Material App Bar'),
         ),
         body: MyWidget(),
       ),
     );
   }
 }
 
 class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState()=> MyWidgetState();

 }

 class MyWidgetState extends State<MyWidget>{
  String textString ='Hello world';
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Text(
              textString,
              style: TextStyle(fontSize: 30),
            ),
            RaisedButton( //                         <--- Button
              child: Text('Button'),
              onPressed: () {
                _doSomething();
              },
            ),
          ],
        );
  }

   void _doSomething() {
      setState(() {
          textString = 'Hello Flutter';
        }
      );
    }

 }*/


/*import 'package:flutter/material.dart';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Material App',
       home: Scaffold(
         appBar: AppBar(
           title: Text('Material App Bar'),
         ),
         body: MyWidget(),
       ),
     );
   }
 }
 
 class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState()=> MyWidgetState();

 }

 class MyWidgetState extends State<MyWidget>{
  String textString ='Hello world';
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Text(
              textString,
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              onChanged:(text){
                _doSomething(text);

              }
            )
          ],
        );
  }

   void _doSomething(String text) {
      setState(() {
          textString = text;
        }
      );
    }

 }*/

/*import 'package:flutter/material.dart';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Material App',
       home: Scaffold(
         appBar: AppBar(
           title: Text('Material App Bar'),
         ),
         body: MyWidget(),
       ),
     );
   }
 }
 
 class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState()=> MyWidgetState();

 }

 class MyWidgetState extends State<MyWidget>{  
  bool _checkedValue= false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('this is my title'),
      value: _checkedValue,
      onChanged: (newValue){
        _doSomething(newValue);
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

   void _doSomething(bool isChecked) {
      setState(() {
          _checkedValue= isChecked;
        }
      );
    }

 }*/

 /*import 'package:flutter/material.dart';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Material App',
       home: Scaffold(
         appBar: AppBar(
           title: Text('Material App Bar'),
         ),
         body: MyWidget(),
       ),
     );
   }
 }
 
 class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState()=> MyWidgetState();

 }

 class MyWidgetState extends State<MyWidget>{
  String textString ='Hello world';
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          child: Text('Button'),
          onPressed: () {
            showAlertDialog();
          },
    );
  }

   void showAlertDialog() {
      Widget okButton = FlatButton(
        child: Text('ok'),
        onPressed: (){
         Navigator.pop(context);
        } 
      );
      AlertDialog alert = AlertDialog(
          title: Text("Dialog title"),
          content: Text("This is a Flutter AlertDialog."),
          actions: [
            okButton,
          ],
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
      );

    }

 }*/


/*import 'package:flutter/material.dart';
import 'dart:math';
  
 void main() => runApp(MyApp());
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Material App',
       home: Scaffold(
         appBar: AppBar(
           title: Text('Material App Bar'),
         ),
         body: MyWidget(),
       ),
     );
   }
 }
 
 class MyWidget extends StatefulWidget{
  @override
  MyWidgetState createState()=> MyWidgetState();

 }

 class MyWidgetState extends State<MyWidget>{
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 30, 
          color: textColor,),
      ),
      onTap: (){
        _doSomething();
      },
    );
  }

   void _doSomething(){
     setState(() {
       int randomHexColor = Random().nextInt(0xFFFFFF);
       int opaqueColor = 0xFF000000 + randomHexColor;
       textColor = Color(opaqueColor);
     });
   }


 }*/


/*import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('First screen')),
          body: Center(
            child: RaisedButton(
              child: Text(
                'Go to second screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _navigateToSecondScreen(context);
              },
            )
          ),
        );
  }

  void _navigateToSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(),
      ));
    }
  }

  class SecondScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: Text('Second screen')),
          body: Center(
            child: RaisedButton(
              child: Text(
                'Go back to first screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _goBackToFirstScreen(context);
              },
            ),
          ),
        );
      }

      void _goBackToFirstScreen(BuildContext context) {
        Navigator.pop(context);
      }
  }*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {

  String text = 'Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
            ),

            RaisedButton(
              child: Text(
                'Go to second screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _awaitReturnValueFromSecondScreen(context);
              },
            )

          ],
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(),
        ));

    setState(() {
      text = result;
    });
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
 TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),

          RaisedButton(
            child: Text(
              'Send text back',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              _sendDataBack(context);
            },
          )

        ],
      ),
    );
  }

  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}




