import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/HomeScreen.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/intro.png'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.75,
              child: const Text(
                "30 Days Fitness Challenges",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Track your fitness level by our smart Mobile App. Calories sleep and training.",
              style: TextStyle(color: Colors.black54, height: 1.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Spacer(),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  elevation: 2.0,
                  fillColor: MyColor.primary,
                  padding: const EdgeInsets.all(15),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
