import 'package:flutter/material.dart';

import '../../Route/app_route.dart';
import '../../Theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        appBar: AppBar(title: Text("Sign up")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username",
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "First name",
                        hintText: "Enter first name",
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Last name",
                        hintText: "Enter last name",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter password",
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        hintText: "Confirm password",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: "Phone number",
                  hintText: "Enter phone number",
                ),
              ),
              SizedBox(height: 32.0),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: (){},
                  child: Text("Signup"),
                ),
              ),
              SizedBox(height: 12),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(text: "Already have an account? ",
                              style: Theme.of(context).textTheme.bodyLarge),
                          TextSpan(text: "Login",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.w800
                            ),),
                        ]
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}