import 'package:flutter/material.dart';
import 'package:nuclassroom23/models/response/card_class_detail.dart';

import 'memberclass.dart';

// ignore: must_be_immutable
class CardClassDetal extends StatelessWidget {
  CardClassDetal({super.key, required this.data});
  CardClassDeatailData data;
  @override
  Widget build(BuildContext context) {
    // return SliverList(
    //   delegate: SliverChildBuilderDelegate(
    //  //   childCount: 10,
    //     (BuildContext context, int index) {
    //       return Column(
    //         children: [
    //           Container(
    //             margin: const EdgeInsets.all(8.0),
    //             //  width: double.infinity,
    //             height: 142,
    //             decoration: BoxDecoration(
    //               // color: Colors.red,
    //               color: index.isOdd ? Colors.indigo : Colors.blueGrey,
    //               borderRadius: const BorderRadius.all(
    //                 Radius.circular(8.0),
    //               ),
    //             ),
    //             child: SizedBox(
    //               // width: double.infinity,
    //               child: Material(
    //                 color: Colors.transparent,
    //                 child: InkWell(
    //                   borderRadius:
    //                       const BorderRadius.all(Radius.circular(8.0)),
    //                   onTap: () {
    //                     Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => const MemberClass(),
    //                       ),
    //                     );
    //                   },
    //                   splashFactory:
    //                       InkSparkle.constantTurbulenceSeedSplashFactory,
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.all(10.0),
    //                         child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             Text(
    //                               // ignore: unnecessary_string_interpolations
    //                               '${data.attributes.name}',
    //                               style: const TextStyle(
    //                                 fontWeight: FontWeight.bold,
    //                                 fontSize: 26,
    //                               ),
    //                             ),
    //                             Text(
    //                               // ignore: unnecessary_string_interpolations
    //                               '${data.attributes.name}',
    //                               style: const TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: 18),
    //                             ),
    //                             const SizedBox(
    //                               height: 30,
    //                             ),
    //                             Text(
    //                               // ignore: unnecessary_string_interpolations
    //                               '${data.attributes.name}',
    //                               style: const TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: 12),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                       ClipRRect(
    //                         borderRadius:
    //                             const BorderRadius.all(Radius.circular(15)),
    //                         child: SizedBox(
    //                           child: Image.network(
    //                             'https://cms.istad.co${data.attributes.picture.data.attributes.url}',
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 1,
            top: 1,
          ),
          width: MediaQuery.of(context).size.width * 1.92,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white60,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${data.attributes.name}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(height: 35),
                                  Text(
                                    '\$\$\$ ${data.attributes.category}',
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 22, 22, 22)),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '\$ ${data.attributes.deliveryFee}',
                                    style: const TextStyle(color: Color.fromARGB(255, 26, 25, 25)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: SizedBox(
                              height: 100,
                              child: Image.network(
                                'https://cms.istad.co${data.attributes.picture.data.attributes.url}',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [],
                    ),
                    // Positioned(
                    //   top: 15,
                    //   child: ClipRRect(
                    //     borderRadius: const BorderRadius.only(
                    //         topRight: Radius.circular(8),
                    //         bottomRight: Radius.circular(8)),
                    //     child: Container(
                    //       color: Colors.pink,
                    //       padding: const EdgeInsets.all(5),
                    //       child: Text(
                    //         '${data.attributes.discount}\$',
                    //         style: const TextStyle(
                    //             fontSize: 14,
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
