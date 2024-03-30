import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Buat static data
  static const List catNames = [
    "Category", "Classes", "Free Course", "BookStore", "Live Course", "Leaderboard"
  ];
  static const List<Color> catColors = [
    Colors.red, Colors.blue, Colors.green, Colors.yellow, Colors.purple, Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 136, 76),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(
                  Icons.dashboard,
                  size: 30,
                  color: Colors.white,
                ),
                Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ]),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 0, bottom: 15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    // padding: EdgeInsets.only(left: 0, bottom: 15),
                    child: Text("Selamat Datang",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2))),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 5, bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(Icons.search, size: 25),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Column(
                    children: [
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 1.1),
                              itemBuilder: (context, index) {
                                return const Column();
                              },
                                  ),
                          
                    ],
                  ))
            ],
          ))
    ]));
  }
}
