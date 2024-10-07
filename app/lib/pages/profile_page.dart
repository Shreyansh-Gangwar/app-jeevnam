import 'package:app/services/auth_services.dart';
import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  // String userName = FirebaseFirestore.instance.collection("users").doc(AuthMethod.uid).get().toString();
  // To-Do: Fetch User's name from the firestore Database, and display it in the page and if found null display 'User' in place of name.

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/login_appbar.png'),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 32,
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.homeRoute);
                        },
                        child: const Icon(
                          size: 30,
                          CupertinoIcons.back,
                        ),
                      ),
                      const Expanded(
                        flex: 100,
                        child: SizedBox(),
                      ),
                      Text(
                        'Profile',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Expanded(
                        flex: 100,
                        child: SizedBox(),
                      ),
                      InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(AppRoutes.editprofileRoute),
                          child: const Icon(size: 35, Icons.edit_note_rounded)),
                      const Expanded(
                        flex: 32,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),
                  CircleAvatar(
                    radius: MediaQuery.sizeOf(context).width * 0.15,
                    backgroundColor: AppColor.neutral700,
                    backgroundImage: NetworkImage(
                        'https://www.elevenforum.com/data/attachments/82/82529-ade63e4209709292183f654907b168f5.jpg'),
                  ),
                ],
              ),
            ],
          ),
          const Expanded(
            flex: 30,
            child: SizedBox(),
          ),
          Text(
            'Hey, User',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Expanded(flex: 76, child: SizedBox()),
          InkWell(
            onTap: () => Navigator.pushNamed(context, AppRoutes.plansRoute),
            child: Container(
              height: 83,
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: const BoxDecoration(
                color: AppColor.neutral100,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(2, 4))
                ],
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 21,
                    child: SizedBox(),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.brand300,
                    foregroundImage:
                        AssetImage('assets/images/wallet_profile_page.png'),
                  ),
                  Expanded(
                    flex: 100,
                    child: const SizedBox(),
                  ),
                  SizedBox(
                    width: 164,
                    child: Text(
                      textAlign: TextAlign.end,
                      'Plans',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 21,
                    child: const SizedBox(),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 21,
            child: SizedBox(),
          ),
          Container(
            height: 83,
            width: MediaQuery.sizeOf(context).width * 0.9,
            decoration: const BoxDecoration(
              color: AppColor.neutral100,
              boxShadow: [
                BoxShadow(
                    color: Color(0x40000000),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(2, 4))
              ],
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 21,
                  child: SizedBox(),
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColor.brand300,
                  child: Icon(color: AppColor.neutral900, Icons.call),
                ),
                Expanded(
                  flex: 85,
                  child: const SizedBox(),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    textAlign: TextAlign.end,
                    'Customer Support',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 20),
                  ),
                ),
                const Expanded(
                  flex: 21,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 21,
            child: SizedBox(),
          ),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutes.editprofileRoute),
            child: Container(
              height: 83,
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: const BoxDecoration(
                color: AppColor.neutral100,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(2, 4))
                ],
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 21,
                    child: SizedBox(),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.brand300,
                    child: Icon(color: AppColor.neutral900, Icons.edit),
                  ),
                  Expanded(
                    flex: 140,
                    child: const SizedBox(),
                  ),
                  SizedBox(
                    width: 164,
                    child: Text(
                      textAlign: TextAlign.end,
                      'Edit Profile',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  const Expanded(
                    flex: 21,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 21,
            child: SizedBox(),
          ),
          InkWell(
            onTap: () {
              AuthMethod().signOut(); //Sign out method!
            },
            child: Container(
              //Tile
              height: 83,
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: const BoxDecoration(
                color: AppColor.neutral100,
                boxShadow: [
                  BoxShadow(
                      //shadow
                      color: Color(0x40000000),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(2, 4))
                ],
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 21,
                    child: const SizedBox(),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.brand300,
                    child: Icon(
                        //icon used
                        color: AppColor.neutral900,
                        Icons.exit_to_app_rounded),
                  ),
                  Expanded(
                    flex: 100,
                    child: const SizedBox(),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .55,
                    child: Text(
                      textAlign: TextAlign.end,
                      'Log Out', //Tile text
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  const Expanded(
                    flex: 21,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 21,
            child: SizedBox(),
          ),

          //Don't put any widgets Below this. NAV BAR
          //                                     |
          //                                     |
          //                                     v
          BottomNavigationBar(elevation: 0, items: [
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.homeRoute),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 0,
                        width: 60,
                      ),
                      Text(
                        'Home',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 20,
                            color: const Color(0xFF6B564D),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.scannerRoute),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        color: AppColor.brand500),
                    child: Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: (Image.asset('assets/images/scanner.png')),
                    ),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Row(
                  children: [
                    const SizedBox(
                      height: 0,
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          'Profile',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontSize: 20),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                              color: AppColor.brand500,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        )
                      ],
                    )
                  ],
                ),
                label: ''),
          ]),
        ],
      ),
    );
  }
}
