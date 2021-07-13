import 'package:first_flutter_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  DefaultFormField(
                      controller: emailController,
                      inputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Email is required";
                        }
                      },
                      label: "Email",
                      prefixIcon: Icons.email),
                  SizedBox(
                    height: 10.0,
                  ),
                  DefaultFormField(
                      controller: passwordController,
                      inputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password mustn't be empty";
                        }
                      },
                      label: "Password",
                      prefixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye,isPassword: true),

                  SizedBox(
                    height: 10.0,
                  ),
                  DefaultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      onPressedCallBack: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: "login"),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don'\t have an account?"),
                      TextButton(onPressed: () {}, child: Text("Register now"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
