import 'package:flutter/material.dart';
import 'package:nuclassroom23/viewmodels/card_class_detail_viewmodel.dart';
import 'package:nuclassroom23/views/home/widgets/left_drawer.dart';
import 'package:nuclassroom23/views/home/widgets/profile_detail.dart';
import 'package:provider/provider.dart';

import '../../data/response/status.dart';
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
  var cardclassdetailViewModel = CardClassDetailViewModel();
  // call  api cuisine

  @override
  void initState() {
    cardclassdetailViewModel.fetchAllCardClassDetail();

    super.initState();
  }

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
              expandedHeight: 90.0,
              title: const Text('NU Classroom'),
              centerTitle: true,
              actions: [
                InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileDetail(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/KakElay.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // const Icon(Icons.favorite, size: 35),
              ],
            ),
            SliverToBoxAdapter(
              child: ChangeNotifierProvider<CardClassDetailViewModel>(
                create: (context) => cardclassdetailViewModel,
                child: Consumer<CardClassDetailViewModel>(
                  builder: ((context, value, child) {
                    switch (value.cardclassdetails.status) {
                      case Status.LOADING:
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      case Status.COMPLETE:
                        return SizedBox(
                          height: 850,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: value.cardclassdetails.data!.data.length,
                            itemBuilder: (builder, index) {
                              return CardClassDetal(
                                data: value.cardclassdetails.data!.data[index],
                              );
                            },
                          ),
                        );

                      default:
                        return const CircularProgressIndicator();
                    }
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('New Class'),
        icon: const Icon(Icons.message),
        backgroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
    );
  }
}
