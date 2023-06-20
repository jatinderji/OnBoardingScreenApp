import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screens_app/pages/home_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        next: const Icon(
          Icons.arrow_right_alt_outlined,
          color: Colors.purple,
        ),
        showSkipButton: true,
        skip: const Text('Skip'),
        onSkip: () {
          gotoHomePage(context);
        },
        done: const Text('Done'),
        onDone: () {
          gotoHomePage(context);
        },
        pages: [
          PageViewModel(
            decoration: const PageDecoration(
              bodyTextStyle: TextStyle(
                fontSize: 20,
              ),
              titleTextStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              imagePadding: EdgeInsets.only(top: 80),
            ),
            title: 'Meet the business',
            body: 'Let\'s meet the business here',
            image: Image.network(
                'https://img.freepik.com/free-vector/new-employee-concept-illustration_114360-7805.jpg'),
          ),
          PageViewModel(
            decoration: const PageDecoration(
              bodyTextStyle: TextStyle(
                fontSize: 20,
              ),
              titleTextStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              imagePadding: EdgeInsets.only(top: 80),
            ),
            title: 'Engage Employees',
            body: 'Employees are connected here',
            image: Image.network(
                'https://img.freepik.com/free-vector/onboarding-concept-illustration_114360-1085.jpg'),
          ),
          PageViewModel(
            decoration: const PageDecoration(
              bodyTextStyle: TextStyle(
                fontSize: 20,
              ),
              titleTextStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              imagePadding: EdgeInsets.only(top: 80),
            ),
            title: 'Well done',
            body: 'You are ready to go',
            image: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1006/1006555.png'),
          )
        ],
      ),
    );
  }

  void gotoHomePage(context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }
}
