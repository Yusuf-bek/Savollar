import 'package:flutter/material.dart';
import 'package:savollar/core/components/size_config/size_config.dart';
import 'package:savollar/core/widgets/gradient_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
    
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Registering to Savollar!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
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
                    decoration: const InputDecoration(
                      label:  Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
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
                   ),
                    controller: _passwordController,
                    validator: (value) {},
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
          GradientButton(
            buttonText: "Register",
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
