import 'package:flutter/material.dart';
import 'package:nuclassroom23/views/home/widgets/left_drawer.dart';

class MemberClass extends StatefulWidget {
  const MemberClass({super.key});

  @override
  State<MemberClass> createState() => _MemberClassState();
}

class _MemberClassState extends State<MemberClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: CustomScrollView(
          slivers: [
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
            //    const CardClassDetal(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   label: const Text('New Class'),
      //   icon: const Icon(Icons.message),
      //   backgroundColor: Colors.white,
      // ),
      drawer:  LeftDrawer(),
    );
  }
}

