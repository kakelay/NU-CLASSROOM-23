import 'package:flutter/material.dart';
import 'package:nuclassroom23/models/response/card_class_detail.dart';
import 'package:nuclassroom23/views/home/home_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPictureSize: const Size.fromRadius(35),
              currentAccountPicture: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(150)),
                child: Image.asset(
                  'assets/images/KakElay.png',
                  fit: BoxFit.cover,
                ),
              ),

              accountName: const Text(" "),
              accountEmail: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Kak Elay",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Personal Account",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Student ID: B20211965",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ElevatedButton(
                  //   // Within the `FirstRoute` widget
                  //   onPressed: () {},
                  //   // ignore: sort_child_properties_last
                  //   child: const Text('Back to Class'),
                  //   style: ButtonStyle(
                  //     elevation: MaterialStateProperty.all(0),
                  //     foregroundColor:
                  //         MaterialStateProperty.all(Colors.blueGrey),
                  //     side: MaterialStateProperty.all(
                  //       const BorderSide(
                  //         width: 2,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     shape: MaterialStateProperty.all(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  ElevatedButton(
                    child: const Text('Back to Class'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage(title: "", count: 0)),
                      );
                    },
                  )
                ],
              ),

              // Step profile information
              otherAccountsPictures: const [
                Icon(Icons.account_box, color: Colors.white),
                Icon(Icons.aspect_ratio, color: Colors.white),
              ],
            ),
            const Divider(
              height: 8,
              color: Colors.white,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Profile'),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.info_sharp),
              title: const Text('Student Information'),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.payment_outlined),
              title: const Text('Payment DashBoard'),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.help_center_outlined),
              title: const Text('Norton Help Center'),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.help_center_outlined),
              title: const Text('About Us'),
              iconColor: Colors.blue,
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Setting',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'Term & Condition',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'LogOut',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
