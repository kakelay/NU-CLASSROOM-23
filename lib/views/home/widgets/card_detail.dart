import 'package:flutter/material.dart';

class CardDetal extends StatelessWidget {
  const CardDetal({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                //  width: double.infinity,
                height: 142,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  color: index.isOdd ? Colors.amber : Colors.green,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: SizedBox(
                  // width: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      onTap: () {},
                      splashFactory:
                          InkSparkle.constantTurbulenceSeedSplashFactory,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Food delivery ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                  ),
                                ),
                                Text(
                                  'foot delivery = ${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'TeacherName = ${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/images/KakElay.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
