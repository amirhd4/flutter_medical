import 'package:flutter/material.dart';
import 'package:flutter_medical/common/app.dart';
import 'package:flutter_medical/widgets/title_bar.dart';
import 'package:flutter_medical/widgets/consultation_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppSize {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: devWidth(100, context),
                  height: devHeight(30, context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 24.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "خوش برگشتید",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "امیر",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24.0),
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const TitleBar(title: "مشاوره های نزدیک"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ConsultationCard(
                          color: Colors.blue.shade900,
                          name: "امیر",
                        ),
                        const SizedBox(width: 15.0),
                        ConsultationCard(
                          color: Colors.lightBlue.shade100,
                          name: "سینا",
                        ),
                        const SizedBox(width: 15.0),
                        ConsultationCard(
                          color: Colors.lightBlue.shade100,
                          name: "علی\nعلیان",
                        ),
                      ],
                    ),
                  ),
                ),
                const TitleBar(title: "نمایه های متخصص"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 30.0,
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                        SizedBox(width: 15.0),
                        CircleAvatar(
                          radius: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const TitleBar(title: "جزئیات سلامتی من"),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
