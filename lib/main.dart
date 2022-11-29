import 'package:flutter/material.dart';
import './clothes_questions.dart';
import './clothes_answer.dart';

void main() {
  runApp(MyApp());
}

// Имплементирајте ја апликацијата од аудиториската вежба 4. Наместо состојки за
// пица, да се избира облека. Копчињата да бидат со зелена позадина и текстот да
// биде црвен, додека текстот на прашањето да биде син. Направете копчињата да бидат разделени.

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {'question' : "Select top part",
    'answer' : ['T-shirt', 'Blouse', 'Sweatshirt', 'No top']},
    {'question' : "Select bottom part",
      'answer' : ['Jeans', 'Pants', 'No bottom']},
    {'question' : "Select shoes",
      'answer' : ['Sneakers', 'Classic', 'Boots', 'No shoes']},
  ];
  var _questionIndex = 0;

  void _iWasTapped(){
    setState(() {
      _questionIndex += 1;
    });
    print("A button was tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Martin Poposki 193004',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Martin Poposki 193004")),
          body: Column(
            children: [
              ClothesQuestion(questions[_questionIndex]['question'] as String),
              ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return ClothesAnswer(_iWasTapped, answer);
              }),
            ],
          ),
          backgroundColor: Colors.teal.shade100,
        ),
    );
  }
}

