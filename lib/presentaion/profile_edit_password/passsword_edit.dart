import 'package:bloc_volunteer_service/presentaion/widgets/inputfield.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  final currentPassword = TextEditingController();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Center(
                  child: Text(
                "Edit Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 30),
              )),
              SizedBox(
                height: 40,
              ),
              Inputfield(
                  height: 40,
                  controller: currentPassword,
                  title: "CurrentPassword",
                  hint: "CurrertPassword"),
              SizedBox(
                height: 20,
              ),
              Inputfield(
                  height: 40,
                  controller: newPassword,
                  title: "NewPassword",
                  hint: "NewPassword"),
              SizedBox(
                height: 20,
              ),
              Inputfield(
                  height: 40,
                  controller: confirmPassword,
                  title: "ConfirmPassword",
                  hint: "ConfirmPassword"),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
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
                  child: Text(
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
