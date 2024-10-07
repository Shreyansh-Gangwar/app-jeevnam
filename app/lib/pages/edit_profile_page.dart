import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:app/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    super.key,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  //To-Do : Finish this page's UI and start on BackEnd. Complete the fields with Text Controllers

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
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
                  Navigator.of(context).pushNamed(AppRoutes.profilepageRoute);
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
                'Edit Profile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Expanded(
                flex: 150,
                child: SizedBox(),
              ),
            ],
          ),
          const Expanded(
            flex: 55,
            child: SizedBox(),
          ),
          const CircleAvatar(
            radius: 58,
            backgroundColor: AppColor.neutral700,
            backgroundImage: NetworkImage(
                'https://www.elevenforum.com/data/attachments/82/82529-ade63e4209709292183f654907b168f5.jpg'),
          ),
          const Expanded(
            flex: 58,
            child: SizedBox(),
          ),
          Row(
            children: [
              const SizedBox(
                width: 59,
              ),
              SizedBox(
                width: 137,
                child: Text(
                  textAlign: TextAlign.start,
                  'Name',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 339,
            child: TextFieldcustom(
                controller: nameController,
                obscureText: false,
                hint: '',
                formKey: 'name'),
          ),
          const Expanded(flex: 16, child: SizedBox()),
          Row(
            children: [
              const SizedBox(
                width: 59,
              ),
              SizedBox(
                width: 137,
                child: Text(
                  textAlign: TextAlign.start,
                  'Email',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 339,
            child: TextFieldcustom(
                controller: emailController,
                obscureText: false,
                hint: '',
                formKey: 'email'),
          ),
          const Expanded(flex: 16, child: SizedBox()),
          Row(
            children: [
              const SizedBox(
                width: 59,
              ),
              SizedBox(
                width: 137,
                child: Text(
                  textAlign: TextAlign.start,
                  'Password',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 339,
            child: TextFieldcustom(
                controller: passController,
                obscureText: true,
                suffixIcon: Icons.remove_red_eye,
                hint: '',
                formKey: 'pass'),
          ),
          const Expanded(flex: 91, child: SizedBox()),
          OrangeBtn(
            btnText: 'Save & Continue',
            onTap: () {},
            width: 345,
          ),
          const Expanded(flex: 74, child: SizedBox()),
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
