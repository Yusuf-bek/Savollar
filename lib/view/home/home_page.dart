import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';
import 'package:savollar/core/widgets/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: getHeightConfig(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.4),
                      child: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.book,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getWidthConfig(10),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.4),
                      child: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.person,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getWidthConfig(10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeightConfig(15),
              ),
              Text(
                "Keling o'ynaymiz!",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                  fontSize: getWidthConfig(33),
                ),
              ),
              CategoryContainer(
                colorsToGradient: const [
                  Colors.green,
                  Colors.blue,
                ],
                assetImagePath: "assets/category_icons/biology.png",
                nameCategory: "Chemistry",
                onPressedPlayIcon: (){},
              ),
              CategoryContainer(
                colorsToGradient: const [
                  
                  Colors.green,
                  Colors.blue,
                ],
                assetImagePath: "assets/category_icons/biology.png",
                nameCategory: "Biology",
                onPressedPlayIcon: (){},
              ),
              CategoryContainer(
                colorsToGradient: const [
                  Colors.green,
                  Colors.blue,
                ],
                assetImagePath: "assets/category_icons/biology.png",
                nameCategory: "Dart",
                onPressedPlayIcon: (){},
              ),
              SizedBox(height: getHeightConfig(20),),
            ],
          ),
        ),
      ),
    );
  }
}

