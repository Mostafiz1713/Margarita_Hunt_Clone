import 'package:flutter/material.dart';
import 'package:margarita_hunt_clone/Screens/home.dart';
import 'package:margarita_hunt_clone/Screens/submit&Review.dart';
import 'package:margarita_hunt_clone/Themes/Themes.dart';

class PageControllerView extends StatefulWidget {
  @override
  _PageControllerState createState() => _PageControllerState();
}

class _PageControllerState extends State<PageControllerView>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int index;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themes.Primary,
        title: Text('Margarita Hunt Clone'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Themes.Grey,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Hunt'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Submit & Review'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Bartender'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('About Us'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              Home(),
              new Container(
                color: Colors.orange,
              ),
              SubmitAndReview(),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            labelStyle: TextStyle(
              fontSize: 8
            ),
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.rate_review),
                text: 'Submit & Review',
              ),
              Tab(
                icon: Image.asset('assets/images/cup-marker-yellow.png'),
                text: 'Bertender',
              )
            ],
            labelColor: Themes.Primary,
            unselectedLabelColor: Themes.Primary2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Themes.Primary2,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
