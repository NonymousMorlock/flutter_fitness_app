import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/MyLineChart.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

//this class if for home screen
//lets continue

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          CircleAvatar(
            radius: 20.0,
            child: ClipOval(
              child: Image.asset('assets/avatar.png', fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Today"),
                  Text(
                    "February 07, 2021",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.deepOrange),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Heart",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const Text(
                          "80",
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          "Per min",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColor.secondary),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: MyColor.primary),
                            child: const Icon(
                              Icons.local_fire_department_sharp,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Calories",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text(
                            "950",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            "Kcal",
                            style: TextStyle(fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent),
                          child: const Icon(
                            Icons.nightlight_round,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Sleep",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const Text(
                          "8:30",
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          "Hours",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.deepPurple),
                          child: const Icon(
                            Icons.timer_sharp,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Training",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const Text(
                          "2:00",
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          "Hours",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    axisLineStyle: const AxisLineStyle(
                        thickness: 0.2,
                        thicknessUnit: GaugeSizeUnit.factor,
                        cornerStyle: CornerStyle.bothCurve),
                    showTicks: false,
                    showLabels: false,
                    onAxisTapped: (value) {},
                    pointers: <GaugePointer>[
                      RangePointer(
                          color: MyColor.secondary,
                          value: 60,
                          onValueChanged: (value) {},
                          cornerStyle: CornerStyle.bothCurve,
                          onValueChangeEnd: (value) {},
                          onValueChanging: (value) {},
                          enableDragging: true,
                          width: 0.2,
                          sizeUnit: GaugeSizeUnit.factor)
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "2.0",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "KM",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        positionFactor: 0.13,
                        angle: 0.5,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              transform: Matrix4.translationValues(0.0, -60, 0.0),
              child: Image.asset('assets/marathon.png'),
            ),

            //here is the chart
            //lets make new stateful widget
            //now lets move chart a little bit

            //we are done.
            //thanks for watching :)

            Container(
              transform: Matrix4.translationValues(0.0, -60, 0.0),
                child: const MyLineChart(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.secondary,
        onPressed: (){},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: MyColor.primary,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              color: Colors.white,
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.add_chart),
              color: Colors.white,
              onPressed: (){},
            ),
            const SizedBox(width: 50,),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              color: Colors.white,
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: Colors.white,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
