import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savollar/core/components/size_config/size_config.dart';
import 'package:savollar/core/constants/text_styles.dart';
import 'package:savollar/core/widgets/gradient_button.dart';
import 'package:savollar/cubit/sign_in_cubit/sign_in_cubit.dart';
import 'package:savollar/cubit/sign_in_cubit/sign_in_states.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => SignInCubit(
        SignInInitialState(),
      ),
      child: Builder(builder: (context) {
        return myScaffold(context);
      }),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
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
                    ),
                    controller: context.read<SignInCubit>().usernameController,
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
                    controller: context.read<SignInCubit>().passwordController,
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
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
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
