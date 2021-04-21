import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWiddget extends PreferredSize {
  AppBarWiddget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: 
        Stack(  
          children: [
            Container(
              height: 161,
              width: double.maxFinite,
              decoration: BoxDecoration(gradient: AppGradients.linear),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              
              child: 
                Row(        
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [ 
                    Text.rich(TextSpan(
                      text: "Olá, ",
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: "Jean Masvi",
                          style: AppTextStyles.titleBold,
                        )
                    ])),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://avatars.githubusercontent.com/u/75592240?v=4") ),
                        borderRadius: BorderRadius.circular(10),
                      )
                    )
                  ],
                )
              ),
              Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget(),),
          ],
        ),
    ),
  );
}