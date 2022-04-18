import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';

class MyTimerWidget extends StatelessWidget {
  const MyTimerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getWidthConfig(15)),
      width: double.infinity,
      height: getHeightConfig(45),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: getWidthConfig(2),
        ),
      ),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.pink,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidthConfig(7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getWidthConfig(20),
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.timer,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
