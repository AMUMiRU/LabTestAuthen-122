import 'package:authentest_122/pages/Success.dart';
import 'package:authentest_122/pages/register.dart';
import 'package:authentest_122/services/auth_service.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final GlobalKey<FormState> _formkey = GlobalKey();
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Login"),
      ),
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              Text("email"),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your email";
                  }
                  return null;
                },
              ),
              Text("password"),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your password";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed:(){
                if (_formkey.currentState!.validate()) {
                  print("ok");
                  AuthService.loginUser(_emailController.text, _passwordController.text)
                  .then((value){
                    if (value == 1 ) {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SuccessPage(),
                      ));
                    }
                  });
                }
              },
              child: const Text("Login")),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ));
              },
              child: const Text("Register")),
            ],
          ),
          ) 
          ),
    );
  }
}