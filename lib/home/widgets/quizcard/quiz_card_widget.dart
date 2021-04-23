import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  
  const QuizCardWidget({ Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.all(16),
        decoration: 
          BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(AppImages.blocks)
                ),
                SizedBox(height: 24,),
                Text("Gerenciamento de estados", style: AppTextStyles.heading15),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("3 de 10", style: AppTextStyles.body11),
                    ),
                    Expanded(
                      flex: 4,
                      child: 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LinearProgressIndicator(
                            value: .3,
                            backgroundColor: AppColors.chartSecondary,
                            valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            )
    );
  }
}