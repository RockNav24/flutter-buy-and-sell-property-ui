import 'package:buy_and_sell_property_app/Components/BottomNavbar/customBottomNavbar.dart';
import 'package:buy_and_sell_property_app/customCard.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> entries = <String>['A', 'B', 'C'];

  final List<int> colorCodes = <int>[600, 500, 100];

  final List<String> slides = ["Slide 1", "Slide 2", "Slide 3"];
  int currentId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(1, 1),
          child: CustomBottomNavbar(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.entries,
  }) : super(key: key);

  final List<String> entries;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Find Your"),
              Text("Sweet Home"),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: FloatingSearchAppBar(
              elevation: 1,
              leadingActions: [Icon(Icons.settings_input_composite_rounded)],
              title: const Text('Search home...'),
              transitionDuration: const Duration(milliseconds: 800),
              body: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: 100,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return null;
                },
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomCard();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              fixedColor: Colors.brown,
              backgroundColor: Colors.brown,
              unselectedItemColor: Colors.blueAccent,
              // currentIndex: currentId,
              // onTap: (value) {
              //   currentId = value;
              //   setState(() {});
              // },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Home",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
