import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/edit_profile/screen_edit_profile.dart';
import 'package:bloc_volunteer_service/presentaion/profile_edit_password/passsword_edit.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              icon: Icon(
                Icons.edit,
                color: primaryColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Hello,",
                style: TextStyle(
                    color: backgroundColor2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "  Anandhu  ",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
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
                          icon: Icon(Icons.edit),
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
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "Anandhu Salin",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "Meluha",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "anandhu@gmail.com",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "9946673154",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "Anandhu@123",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        "Male",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  ConstSize.kheight2,
                  ConstSize.kheight2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date Of Birth',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 20),
                      ),
                      ConstSize.kwidth,
                      Text(
                        " 08-06-1997",
                        style: TextStyle(color: backgroundColor2, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  // Container(
                  //   decoration: BoxDecoration(
                  //
                  //       borderRadius: BorderRadius.circular(20)
                  //   ),
                  //   height: 45,
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         primary: Colors.orange),
                  //
                  //     onPressed: (){
                  //
                  //       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>));
                  //
                  //     },
                  //
                  //
                  //     child: Text('LOGOUT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  //   ),
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfile()));
                              },
                              icon: Icon(Icons.edit)),
                          Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.logout_outlined)),
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditPassword()));
                              },
                              icon: Icon(Icons.password_outlined)),
                          Text(
                            "Edit Password",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
