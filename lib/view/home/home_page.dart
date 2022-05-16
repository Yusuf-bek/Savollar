import 'package:easy_localization/easy_localization.dart';
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CategoryContainer(
                  key: UniqueKey(),
                  colorsToGradient: const [
                    Colors.orangeAccent,
                    Colors.redAccent,
                  ],
                  assetImagePath: "assets/category_icons/colba.png",
                  nameCategory: "Chemistry".tr(),
                  onPressedPlayIcon: () {
                    Navigator.pushNamed(context, "/solve");
                  },
                ),
                CategoryContainer(
                  key: UniqueKey(),
                  colorsToGradient: const [
                    Colors.green,
                    Colors.blue,
                  ],
                  assetImagePath: "assets/category_icons/biology.png",
                  nameCategory: "Biology".tr(),
                  onPressedPlayIcon: () {
                    context.setLocale(const Locale('uz', 'UZ'));
                  },
                ),
                SizedBox(
                  height: getHeightConfig(10),
                ),
                CategoryContainer(
                  key: UniqueKey(),
                  colorsToGradient: const [Colors.blueAccent, Colors.redAccent],
                  assetImagePath: "assets/category_icons/dart.png",
                  nameCategory: "Dart",
                  onPressedPlayIcon: () {
                    context.setLocale(const Locale("ru", "RU"));
                  },
                ),
                SizedBox(
                  height: getHeightConfig(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
