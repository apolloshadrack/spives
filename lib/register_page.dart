import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/spiveslogo.png', height: 100),
            SizedBox(height: 20),
            Text('Create an Account', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to Google sign up
              },
              icon: Icon(Icons.g_mobiledata),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Continue with Google'),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to Facebook sign up  
              },
              icon: Icon(Icons.facebook),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Continue with Facebook'),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Sign up with email'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Already have an account? Log In'),
            ),
          ],
        ),
      ),
    );
  }
}