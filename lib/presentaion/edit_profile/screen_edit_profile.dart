import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/inputfield.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final profileNameController = TextEditingController();
  final profilePhoneController = TextEditingController();
  final profileDOBController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: const [
              SizedBox(
                width: 60,
              ),
              Text(
                "    Edit Profile",
                style: TextStyle(color: primaryColor, fontSize: 25, height: 3),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Positioned(
                    right: 130,
                    bottom: 4,
                    child: Center(
                      child: Container(
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  )
                ],
              ),
              Inputfield(
                  height: 60,
                  controller: profileNameController,
                  title: "Name",
                  hint: "ProfileName"),
              ConstSize.kheight,
              Inputfield(
                  height: 60,
                  controller: profilePhoneController,
                  title: "Phone",
                  hint: "Phone"),
              ConstSize.kheight,
              Inputfield(
                  height: 60,
                  controller: profileDOBController,
                  title: "DateOfBirth",
                  hint: "DOB"),
              ConstSize.kheight,
              Inputfield(
                  height: 60,
                  controller: passwordController,
                  title: "Password",
                  hint: "Password"),
              ConstSize.kheight,
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: primaryColor),
                  onPressed: () {
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
