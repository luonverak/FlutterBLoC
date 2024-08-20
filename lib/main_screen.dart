import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const routeName = '/MainScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              "Home Screen",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            backgroundColor: Colors.red[900],
            floating: true,
          ),
          SliverFixedExtentList(
            itemExtent: 200,
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blue[900],
                  ),
                );
              },
              childCount: 5,
              
            ),
          ),
        ],
      ),
    );
  }
}
