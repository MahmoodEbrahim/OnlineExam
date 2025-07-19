import 'package:flutter/material.dart';
import 'package:online_exam/Route/app_route.dart';
import 'package:online_exam/features/profile/presentation/pages/addphoto/image_picker_widget.dart';

import '../../../../core/Theme/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool enable = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth= MediaQuery.of(context).size.width;
    final double screenHigh= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ImagePickerWidget(),
                    SizedBox(height: screenHigh*0.1,),
                    TextField(
                      enabled: enable,
                      decoration: InputDecoration(
                        labelText: "User name",
                        hintText: " Mahmoud Ebrahim Ahmed ",
                        hintStyle: TextStyle(color: AppColors.blackDark),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHigh*0.06,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child:
                            TextField(
                              enabled: enable,
                              decoration: InputDecoration(
                                labelText: "First name",
                                hintText: " Mahmoud ",
                                hintStyle: TextStyle(color: AppColors.blackDark),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(),
                              ),
                            ),
                        ),
                        SizedBox(width: screenWidth*0.05,),
                        Expanded(
                          child:
                          TextField(
                            enabled: enable,
                            decoration: InputDecoration(
                              labelText: "Last name",
                              hintText: "Ahmed ",
                              hintStyle: TextStyle(color: AppColors.blackDark),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: screenHigh*0.06,),
                    TextField(
                      enabled: enable,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: " Mohamed098@gmail.com",
                        hintStyle: TextStyle(color: AppColors.blackDark),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHigh*0.06,),
                    TextField(
                      enabled: enable,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "x x x x x x x ",
                        hintStyle: TextStyle(color: AppColors.blackDark),
                        suffix: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.resetpassword);
                          },
                          child: Text("Change",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff02369C),
                          ),),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHigh*0.06,),
                    TextField(
                      enabled: enable,
                      decoration: InputDecoration(
                        labelText: "Phone number",
                        hintText: "1234567890987",
                        hintStyle: TextStyle(color: AppColors.blackDark),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHigh*0.1,),
                    SizedBox(
                      width: double.infinity,
                      height: screenHigh*0.14,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          enable=!enable;
                        });
                      },
                          child: Text("Update")
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
