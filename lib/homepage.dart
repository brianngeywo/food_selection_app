import 'package:flutter/material.dart';
import 'package:food_selection_app/test_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 30,
              ),
              child: ListTile(
                title: const Text(
                  "Hi, Brian",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  "Are you ready for today's dinner?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/profile.jpg",
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ),
            Container(
              height: 170,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                  image: const AssetImage(
                    "assets/bg.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 11.0),
                      child: Text(
                        "Menu for supper",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    const Padding(
                      padding: EdgeInsets.only(left: 11.0),
                      child: Text(
                        "Chicken Baked",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Card(
                            color: Colors.yellow,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.timelapse,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          label: const Text(
                            "30 min",
                            style: TextStyle(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Card(
                            color: Colors.yellow,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.thermostat_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          label: const Text(
                            "moderate",
                            style: TextStyle(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text(
                "Meal Category",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: Text(
                "View All",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: meals
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 15),
                          child: Chip(
                            backgroundColor: Colors.grey.shade900,
                            side: BorderSide(
                              color: Colors.grey.shade900,
                            ),
                            label: Text(e),
                          ),
                        ))
                    .toList(),
              ),
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                mealCard(image: "assets/food2.png", name: "Meal One"),
                mealCard(image: 'assets/food3.png', name: "Meal Two"),
                mealCard(image: 'assets/food5.png', name: "Meal Three"),
                mealCard(image: 'assets/food1.png', name: "Meal Four"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget mealCard({required String image, required String name}) {
  return SizedBox(
    height: 300,
    child: Stack(
      children: [
        Container(
          height: 400,
          color: Colors.transparent,
        ),
        Positioned(
          top: 35,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
              height: 165,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Time:", style: TextStyle(color: Colors.white70,fontSize: 12,),),
                            Text("30 mins"),
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("By:", style: TextStyle(color: Colors.white70,fontSize: 12,),),
                            Text("Chef Brian"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Image.asset(
            image,
            height: 82,
            width: 82,
          ),
        ),
      ],
    ),
  );
}
