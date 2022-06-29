import 'package:flutter/material.dart';
import 'package:task_one/component/my_button.dart';
import 'package:task_one/component/my_form.dart';
import 'package:task_one/register/register_screen.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/login.png",
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Welcome to Fashion Daily',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text(
                          'Help',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                        Icon(
                          Icons.help,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyForm(
                  lable: 'Phone Number ',
                  controller: phoneController,
                  validaiton: 'Phone number must not be empty',
                  keyBordType: TextInputType.phone),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                  onClilc: () {},
                  width: double.infinity,
                  text: 'Sign in',
                  color: Colors.blue,
                  radius: BorderRadius.circular(6),
                  textColor: Colors.white),
              const SizedBox(
                height: 20,
              ),
              const Center(child: Text('Or')),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                  onClilc: () {},
                  text: 'sign by google ',
                  width: double.infinity,
                  color: Colors.white38,
                  radius: BorderRadius.circular(6),
                  textColor: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Doesn't has any account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text('Register here'))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "Use the application according to policy rules. Any kinds of violations will be subject to sanctions.",
                textAlign: TextAlign.center,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
