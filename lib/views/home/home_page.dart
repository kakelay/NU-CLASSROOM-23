import 'package:flutter/material.dart';
import 'package:nuclassroom23/views/home/widgets/left_drawer.dart';

import 'widgets/card_class_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.count});

  final String title;
  final int count;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// bool _pinned = false;
// bool _snap = false;
// bool _floating = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // pinned: _pinned,
              // snap: _snap,
              // floating: _floating,
              expandedHeight: 80.0,
              title: const Text('NU Classroom'),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/KakElay.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // const Icon(Icons.favorite, size: 35),
              ],
            ),
            const CardClassDetal(),
          ],
        ),
      ),
      drawer: const LeftDrawer(),
    );
  }
}
