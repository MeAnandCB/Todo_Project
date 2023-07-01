import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo/Screens/home_page.dart';

class IntroScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/appointment-booking-with-smartphone_23-2148554232.jpg?w=740&t=st=1688371171~exp=1688371771~hmac=0f6dd6cea70580cc43eb8585849aebafb019e5263d1ad61c0fb29c159b1e4e20",
                height: 400,
              ),
              SizedBox(height: 16),
              Text(
                "Manage your tasks",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "You can easily manage all of your daily tasks in DoMe for free",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          decoration: const PageDecoration(
            pageColor: Colors.white,
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/appointment-booking-with-smartphone_52683-39659.jpg?w=740&t=st=1688371227~exp=1688371827~hmac=261119ecb81060aac83baa456861aaddf85983809e4063044471d7f657685825",
                height: 400,
              ),
              SizedBox(height: 16),
              Text(
                "Create daily routine",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "In Uptodo  you can create your personalized routine to stay productive",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          decoration: const PageDecoration(
            pageColor: Colors.white,
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/appointment-booking-mobile-concept_23-2148570788.jpg?w=740&t=st=1688371328~exp=1688371928~hmac=27cd4d500db2883b8f0326096cc529af5341b38400f10be4ba3995ceba3d1ff4",
                height: 400,
              ),
              SizedBox(height: 16),
              Text(
                "Orgonaize your tasks",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "You can organize your daily tasks by adding your tasks into separate categories",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          decoration: const PageDecoration(
            pageColor: Colors.white,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
