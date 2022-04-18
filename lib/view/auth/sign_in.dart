import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';
import 'package:savollar/core/constants/text_styles.dart';
import 'package:savollar/core/widgets/gradient_button.dart';
import 'package:savollar/view/auth/sign_up.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 48, 73),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Savollarga hush kelibsiz!",
            style: MyTextStyles.welcomeText,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: getHeightConfig(200),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidthConfig(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      label: const Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: getWidthConfig(2),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                    ),
                    controller: _usernameController,
                    validator: (value) {},
                    onChanged: (value) {},
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      label: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                    ),
                    controller: _passwordController,
                    validator: (value) {},
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: getHeightConfig(130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                GradientButton(
                  buttonText: "Log in",
                ),

                // NavigateToRegistrationButton
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: getWidthConfig(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

