import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const QuizzlerApp());
}

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];



  int questionNumber = 0;

  void nextNumber(){
    setState(() {
      questionNumber+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                quizBrain.questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    bool correctAnswer = quizBrain.questionBank[questionNumber].questionAnswer;
                    if(correctAnswer == true){
                      print('correct');
                    }else{
                      print('wrong');
                    }
                    setState(() {
                      nextNumber();
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),

                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    bool correctAnswer = quizBrain.questionBank[questionNumber].questionAnswer;
                    if(correctAnswer == false){
                      print('correct');
                    }else{
                      print('wrong');
                    }
                    setState(() {
                      nextNumber();
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}

