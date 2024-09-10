import 'package:flutter/material.dart';
import 'package:gamezone/adapters/ui/widgets/my_drawer.dart';
import 'package:gamezone/adapters/ui/widgets/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [MySliverAppBar(child: Text("Hello"), title: Text("Hi"))],
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
