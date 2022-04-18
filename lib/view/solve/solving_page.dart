import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';
import 'package:savollar/core/widgets/question_card_widget.dart';
import 'package:savollar/core/widgets/timer_widget.dart';

class SolvingPage extends StatelessWidget {
  const SolvingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 48, 73),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Leave",
              style: TextStyle(
                color: Colors.red,
                fontSize: getWidthConfig(20),
              ),
            ),
          ),
          SizedBox(
            width: getWidthConfig(10),
          ),
        ],
      ),
      body: getBody(context: context),
    );
  }

  Column getBody({required BuildContext context}) {
    return Column(
      children: [
        SizedBox(
          height: getHeightConfig(20),
        ),
        const MyTimerWidget(),
        SizedBox(
          height: getHeightConfig(30),
        ),
        Text(
          "Question 1/10",
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: getWidthConfig(30),
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
            color: Colors.white.withOpacity(0.6),
            endIndent: getWidthConfig(50),
            indent: getWidthConfig(50)),
        const QuestionCardWidget(),
        SizedBox(height: getHeightConfig(20),),
        InkWell(
          onTap: () {},
          child: Container(
            width: getWidthConfig(300),
            height: getHeightConfig(60),
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.blue.withOpacity(0.3)],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getWidthConfig(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

