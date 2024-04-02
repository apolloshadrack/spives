import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/assets/spiveslogo.png', height: 100),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: 'Name')),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                items: <String>['State 1', 'State 2', 'State 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle state selection
                },
                decoration: InputDecoration(labelText: 'Select your state'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle sign up
                },
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}