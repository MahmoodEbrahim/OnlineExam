import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_exam/Route/app_route.dart';
import '../../../../../Theme/app_colors.dart';
import '../../../data/datasources.dart';
import '../../../data/remote/auth_api_client.dart';
import '../../../data/repositories.dart';
import '../../../domain/usecases.dart';
import 'login_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final dio = Dio();
        final apiClient = AuthApiClient(dio);
        final datasource = AuthRemoteDatasource(apiClient);
        final repository = AuthRepositoryImpl(datasource);
        final useCase = LogicUserCase(repository);
        return LoginBloc(useCase);
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            } else if (state is LoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login Success ✅")),
              );
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackDark),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackDark),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 4),
                          Text(
                            "Remember me",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.forgetpass);
                            },
                            child: Text(
                              "Forget password?",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            final email = emailController.text;
                            final pass = passwordController.text;
                            context.read<LoginBloc>().add(
                              LoginButtonPressed(email, pass),
                            );
                          },
                          child: Text("Login"),
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signup);
                        },
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "Don't have an account? ",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: "Sign up",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                color:
                                Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
