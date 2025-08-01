import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotifyui/widget/uihelper.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Stack(
              //   alignment: Alignment.center, // Center the logo on top of the background
              //   children: [
              //     UiHelper.CustomImage(imgurl: 'backimg.png'), // Background image
              //     UiHelper.CustomImage(imgurl: 'logo.png'),    // Logo on top
              //   ],
              // ),

              UiHelper.CustomImage(imgurl: 'logo.png'),
              SizedBox(height: 10,),
              Text('Millions of Songs',style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(height: 8,),
              Text('Free on Spotify',style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1ED760), // Hex color #1ED760
                  ),
                  child: Text('Sign up free',style: TextStyle(
                    color:
                      Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black, // Add background color here instead
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12), // Padding for inner content
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min, // <== Important
                      children: [
                        UiHelper.CustomImage(imgurl: 'google.png'),
                        SizedBox(width: 8), // Space between image and text
                        Text(
                          'Sign up with Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black, // Add background color here instead
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12), // Padding for inner content
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, // <== Important
                      children: [
                        UiHelper.CustomImage(imgurl: 'facebook.png'),
                        SizedBox(width: 8), // Space between image and text
                        Text(
                          'Sign up with Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black, // Add background color here instead
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12), // Padding for inner content
                    ),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min, // <== Important
                      children: [
                        SizedBox(width: 5,),
                        UiHelper.CustomImage(imgurl: 'vector.png'),
                        SizedBox(width: 10), // Space between image and text
                        Text(
                          'Sign up with Apple',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Log In',style: TextStyle(color: Colors.white,fontSize: 15),),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent, // or any color you like
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, // optional
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // TODO: Navigate to sign up page
                          print("Sign Up tapped");
                        },
                    ),
                  ],
                ),
              )





            ],
          ),
        ),
      )
    );
  }

}