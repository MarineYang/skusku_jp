import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text('Hello, World!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text('Login to continue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal), ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
            TextButton(onPressed: () {
              print('Forgot is clicked');
            }, 
            child: Text('Forgot Password?'), 
            style: TextButton.styleFrom(foregroundColor: Colors.black,),
            ),
            ElevatedButton(onPressed: () {
              print('Login is clicked');
            }, child: Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),)),
            Text('Or sigh in with', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
            ElevatedButton(onPressed: () {
              print('Google is clicked');
            }, child: Row(
              children: [
                Image.asset('assets/images/google.png', width: 20, height: 20,),
                Text('Login with Google'),
              ],
            )),
            ElevatedButton(onPressed: () {
              print('Facebook is clicked');
            }, child: Row(
              children: [
                Image.asset('assets/images/facebook.png', width: 20, height: 20,),
                Text('Login with Facebook'),
              ],
            )),
            Row(
              children: [
                Text('Don\'t have an account?'),
                TextButton(onPressed: () {
                  print('Sign up is clicked');
                }, child: Text('Sign up')),
              ],
            )
          ],
        ),
      );
  }
}