import 'package:flutter/material.dart';

import 'components.dart';

class Login extends StatefulWidget {
   Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();
  bool isPassword=true;

  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Login',
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40.0,),
                  defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      label: 'Email Address',
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'email address must not be empty';
                        }
                        return null;
                      },
                  ),

                  const SizedBox(height: 20.0,),
                  defaultFormField(
                      controller: passwordController,
                      type:TextInputType.visiblePassword ,
                      label: "Password",
                      prefixIcon:Icons.lock,
                      isPassword:  isPassword,
                      suffixPressed: (){
                        setState(() {
                          isPassword=!isPassword;

                        });

                      },

                      suffixIcon:isPassword? Icons.visibility:Icons.visibility_off,
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'password must not be empty';
                        }
                        return null;
                      },
                  ),

                  const SizedBox(height: 20,),
                  defaultButton(
                    text: 'login',
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }

                      },

                    radius: 3,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text('Don\'t have an account?'),
                      TextButton(
                         onPressed: () {

                         },
                        child: Text('Register Now'),
                      ),
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
