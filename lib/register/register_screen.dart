import 'package:flutter/material.dart';
import 'package:task_one/component/my_button.dart';
import 'package:task_one/component/my_form.dart';
import 'package:task_one/sign_in/sign_in.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/images/register.png",
                height: 200,
              ),
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
                  'Register',
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
                lable: 'Email',
                controller: emailController,
                validaiton: 'email must not be empty',
                keyBordType: TextInputType.emailAddress),
            const SizedBox(
              height: 25,
            ),
            MyForm(
                lable: 'Phone Number',
                controller: phoneController,
                validaiton: 'phone must not be empty',
                keyBordType: TextInputType.phone),
            const SizedBox(
              height: 25,
            ),
            MyForm(
                lable: 'password',
                controller: passwordController,
                validaiton: 'password must not be empty',
                keyBordType: TextInputType.emailAddress),
            const SizedBox(
              height: 25,
            ),
            MyButton(
                onClilc: () {},
                width: double.infinity,
                text: 'Register',
                color: Colors.blue,
                radius: BorderRadius.circular(6),
                textColor: Colors.white),
            const SizedBox(
              height: 10,
            ),
            const Center(child: Text('Or')),
            const SizedBox(
              height: 10,
            ),
            MyButton(
                onClilc: () {},
                text: 'sign by google ',
                width: double.infinity,
                color: Colors.blue,
                radius: BorderRadius.circular(6),
                textColor: Colors.white),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Has any account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => SignInScreen(),
                        ),
                      );
                    },
                    child: const Text('Sign in here'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "By regestering your account, you are agree to our",
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () {}, child: const Text('terms and condition')),
            ),
          ],
        ),
      ),
    );
  }
}
