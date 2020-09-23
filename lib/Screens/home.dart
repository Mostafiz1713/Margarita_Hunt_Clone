import 'package:flutter/material.dart';
import 'package:margarita_hunt_clone/Themes/Themes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    );
  }
}
