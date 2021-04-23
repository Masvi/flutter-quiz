import 'package:dev_quiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:dev_quiz/home/widgets/levelbutton/level_button_widget.dart';
import 'package:dev_quiz/home/widgets/quizcard/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({ Key?key }) :super(key:key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> { 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWiddget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: "Fácil"),
                LevelButtonWidget(label: "Médio"),
                LevelButtonWidget(label: "Difícil"),
                LevelButtonWidget(label: "Perito"),
              ]
            ),
            SizedBox(
              height: 24
            ),
            Expanded(
              child: 
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    QuizCardWidget(), 
                    QuizCardWidget(),
                    QuizCardWidget()
                  ]
                ),
            )
          ],
        ),
      ),
    );
  }
}