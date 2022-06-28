import 'package:flutter/material.dart';
import 'package:task_one/image_model.dart';
import 'package:task_one/onboarding_model.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: "7Krave",
      image: ImageModel.onBoardingImageOne,
      bodyContentTitle: 'Get food delivery to your \n doorstep asap',
      bodyContent:
          'We have young and professional delivery\n team that will bring your food as soon as \n possible to your doorstep',
    ),
    OnBoardingModel(
      title: "7Krave",
      image: ImageModel.onBoardingImageTwo,
      bodyContentTitle: 'Buy Any Food From your \n favorite restaurant',
      bodyContent:
          "We are congtantly adding your favourite \n restaurant throughout the territory and around your area carefully selected",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (buildContext, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    onBoardingList[i].title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Image.asset(
                    onBoardingList[i].image!,
                  ),
                  Text(
                    onBoardingList[i].bodyContentTitle!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    onBoardingList[i].bodyContent!,
                    style:
                        const TextStyle(fontSize: 20, color: Colors.blueGrey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.teal),
                          ))
                    ],
                  ),
                ],
              ),
            );
          }),
    ));
  }
}
