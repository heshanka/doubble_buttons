import 'button.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

import 'icon_button.dart' as custom;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Buttons buttons buttons'),
    );
  }
}

///
/// View containing the buttons
///

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
            spacing: 8,
            runSpacing: 8,
          children: [

            //Button with only text
            Button(text: const Text("Basic Button", style: Constants.buttonLightTextStyle,), bgColor: Constants.primaryColor, borderRadius: 8,),

            //Button with text and an icon
            Button(text: const Text("Button w Icon",style: Constants.buttonLightTextStyle,),icon: const Icon(Icons.add, color: Colors.white,), bgColor: Constants.secondaryColor, borderRadius: 8,),

            //Disabled Button
            Button(text: const Text("Disabled", style: Constants.buttonLightTextStyle,), bgColor: Constants.primaryColor, borderRadius: 8, isDisabled: true,),

            //IconButtons
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: custom.IconButton(const Icon(Icons.close, color: Colors.black,), width: 110, bgColor: Colors.white, borderRadius: 25, border: Border.all(color: Color(0xffd8d3d2), width: 2)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: custom.IconButton(const Icon(Icons.backspace_outlined, color: Colors.black,), width: 70, bgColor: const Color(0xffd8d3d2), borderRadius: 25,),
                  ),
                  custom.IconButton(const Icon(Icons.favorite, color: Colors.white,), width: 110, bgColor: Constants.secondaryColor, borderRadius: 25,),
                ]),

            //Button with border
            Button(text: const Text("Bordered", style: Constants.buttonLightTextStyle,), bgColor: Constants.primaryColor, borderRadius: 8, border: Border.all(color: Colors.indigo, width: 2.0),),

            //Transparent Button with border
            Button(text: const Text("Transparent", style: Constants.buttonDarkTextStyle,), bgColor: Colors.transparent, borderRadius: 8, border: Border.all(color: Colors.indigo, width: 1.5),),

            //White Button with border
            Button(text: const Text("White", style: Constants.buttonDarkTextStyle,), bgColor: Colors.white, borderRadius: 8, border: Border.all(color: Colors.black, width: 1.0),),
          ]
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
