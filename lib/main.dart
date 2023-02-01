import "package:flutter/material.dart";
import "package:flutter_medical/pages/account_page.dart";
import "package:flutter_medical/pages/home_page.dart";
import "package:flutter_medical/pages/noti_page.dart";
import "package:flutter_medical/pages/schedule_page.dart";
import "package:flutter_medical/pages/search_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "برنامه پزشکی",
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final screens = const [
    HomePage(),
    SchedulePage(),
    SearchPage(),
    NotificationPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: currentPage == 0
                  ? const Icon(
                      Icons.home,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.home,
                      color: Colors.grey.shade700,
                    ),
              label: "خانه"),
          BottomNavigationBarItem(
            icon: currentPage == 1
                ? const Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.calendar_month,
                    color: Colors.grey.shade700,
                  ),
            label: "زمانبندی",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 2
                ? const Icon(
                    Icons.search,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.search,
                    color: Colors.grey.shade700,
                  ),
            label: "جستجو",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 3
                ? const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.notifications,
                    color: Colors.grey.shade700,
                  ),
            label: "اعلانات",
          ),
          BottomNavigationBarItem(
            icon: currentPage == 4
                ? const Icon(
                    Icons.person,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.person,
                    color: Colors.grey.shade700,
                  ),
            label: "نمایه",
          ),
        ],
      ),
    );
  }
}
