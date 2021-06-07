import 'package:flutter/material.dart';
import 'package:kuickmeat_vendor_app/screens/login_screen.dart';
import 'package:kuickmeat_vendor_app/widgets/image_picker.dart';
import 'package:kuickmeat_vendor_app/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'register-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShopPicCard(),
                  RegisterForm(),
                  Row(
                    children: [
                      FlatButton(
                        padding: EdgeInsets.zero,
                        child: RichText(
                          text: TextSpan(
                              text: '',
                              children: [
                                TextSpan(text: 'Already have an account? ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                TextSpan(text: 'Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                              ]
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
