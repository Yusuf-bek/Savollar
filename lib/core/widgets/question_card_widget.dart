import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';

class QuestionCardWidget extends StatelessWidget {
  const QuestionCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getWidthConfig(20), vertical: getHeightConfig(5)),
      width: MediaQuery.of(context).size.width,
      height: getHeightConfig(500),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "What are differences between Stateless and Stateful widgets?",
              style: TextStyle(
                color: Colors.black,
                fontSize: getWidthConfig(18),
              ),
            ),
            const Spacer(flex: 2),
            getOptionContainer(
              optionText: "States"
            ),
            const Spacer(flex: 1),
            getOptionContainer(
              optionText: "Nothing"
            ),
            const Spacer(flex: 1),
            getOptionContainer(
              optionText: "Something"
            ),
            const Spacer(flex: 1),
            getOptionContainer(
              optionText: "Anything"
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  InkWell getOptionContainer(
    {required String optionText
    
    }
  ) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        width: getWidthConfig(310),
        height: getHeightConfig(50),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.blueGrey,
            width: getWidthConfig(2),
          ),
        ),
        child: Text(optionText),
      ),
    );
  }
}
