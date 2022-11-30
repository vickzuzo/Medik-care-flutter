import 'package:flutter/material.dart';
import 'package:medikcare/utils/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // APP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Helloo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 8),
                        Text("Uzochukwu Victor",
                            style: TextStyle(fontSize: 24)),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person, color: Colors.deepPurple[500]),
                    )
                  ]),
            ),
            const SizedBox(height: 25),
            // HOW DO YOU FEEL
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  // ANIMATION | CUTE PICTURE
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.deepPurple[200],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "How do you feel?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Fill out your medical card right now",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(top: 14),
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 18),
                    hintText: "How can we help you ...",
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    categoryName: "Dentist",
                    iconImagePath: "lib/icons/tooth.png",
                  ),
                  CategoryCard(
                    categoryName: "Surgeon",
                    iconImagePath: "lib/icons/surgeon.png",
                  ),
                  CategoryCard(
                    categoryName: "Pharmacist",
                    iconImagePath: "lib/icons/drugs.png",
                  ),
                  CategoryCard(
                    categoryName: "Nurse",
                    iconImagePath: "lib/icons/nurse.png",
                  ),
                  CategoryCard(
                    categoryName: "First Aid",
                    iconImagePath: "lib/icons/first-aid-kit.png",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // DOCTOR LIST SECTION

            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Doctor List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 102, 99, 99),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),

            Container(
                child: Column(
              children: [
                // picture of doctor
                // rating of doctor
                // name of doctor
                // exp of doctor
              ],
            ))
          ],
        ),
      ),
    );
  }
}
