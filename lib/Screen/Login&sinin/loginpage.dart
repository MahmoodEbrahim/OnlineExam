
import 'package:flutter/material.dart';
import 'package:online_exam/Route/app_route.dart';

import '../../Theme/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter you email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.blackDark)
                      )
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter you Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.blackDark)
                      )
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? value){
                      setState(() {
                        isChecked=value!;
                      });
                        }
                    ),
                    const SizedBox(width: 4,),
                    Text("Remember me",
                      style: Theme.of(context).textTheme.bodyLarge,),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.forgetpass);
                      },
                      child: Text("Forget password?",style: Theme.of(context).textTheme.headlineSmall,),
                    )
                  ],
                ),
                const SizedBox(height: 24,),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(onPressed: (){},
                      child: Text("Login"),
                  ),
                ),
                const SizedBox(height: 16,),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.signup);
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account?",
                            style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: "Sign up",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w700
                            ),
                        ),
                      ]
                    )
                  ),
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}