import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';

class GradientButton extends StatelessWidget {
  String buttonText;
  GradientButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/");
      },
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
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: getWidthConfig(20),
            ),
          ),
        ),
      ),
    );
  }
}
