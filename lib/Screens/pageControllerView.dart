import 'package:flutter/material.dart';
import 'package:margarita_hunt_clone/Themes/Themes.dart';

class PageControllerView extends StatefulWidget {
  @override
  _PageControllerState createState() => _PageControllerState();
}

class _PageControllerState extends State<PageControllerView> {
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
      body: Container(
        child: Center(child: Text('Home')),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Column(
              children: [
                Image.asset('assets/images/home.svg'),
                Text('About Us'),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/images/home.svg'),
                Text('About Us'),
              ],
            ),
            Column(
              children: [
                Image.asset('assets/images/home.svg'),
                Text('About Us'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
