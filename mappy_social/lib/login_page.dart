import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Hello, welcome back!'),
            SizedBox(
              height: 16,
            ),
            Text('Login to continue'),
            TextField(
              decoration: InputDecoration(hintText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Forgot password?'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log in'),
            ),
            SizedBox(
              height: 62,
            ),
            Text(
              'Or sign in with',
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset('assets/images/google.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Login with Google',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset('assets/images/facebook.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Login with Facebook',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Don\'t have account?'),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
