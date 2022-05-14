import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';

class CategoryContainer extends StatelessWidget {
  List<Color> colorsToGradient;
  String assetImagePath;
  String nameCategory;
  Function() onPressedPlayIcon;
  CategoryContainer({
    Key? key,
    required this.colorsToGradient,
    required this.assetImagePath,
    required this.nameCategory,
    required this.onPressedPlayIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        top: getHeightConfig(90),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: getHeightConfig(190),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: colorsToGradient,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: getHeightConfig(-70),
              right: getWidthConfig(20),
              child: SizedBox(
                width: getWidthConfig(150),
                height: getWidthConfig(150),
                child: Image.asset(
                  assetImagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: getHeightConfig(25),
              left: getWidthConfig(25),
              child: Text(
                nameCategory,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getWidthConfig(30),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: getHeightConfig(25),
              left: getWidthConfig(25),
              child: Container(
                width: getWidthConfig(50),
                height: getWidthConfig(50),
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onPressed: onPressedPlayIcon,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: getWidthConfig(2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
