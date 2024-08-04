import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';
import 'package:sound_of_meme/pages/main_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMidnightBlue,
          title:
              const Text('Sound of Meme', style: TextStyle(color: kRazerGreen)),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Register'),
            ],
            indicatorColor: kRazerGreen,
            labelColor: kRazerGreen,
            unselectedLabelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            LoginTab(),
            RegisterTab(),
          ],
        ),
      ),
    );
  }
}

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle login action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kRazerGreen,
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Center(child: Text('OR')),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Redirect to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterTab extends StatelessWidget {
  const RegisterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle register action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kRazerGreen,
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Center(child: Text('OR')),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Redirect to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Sign up with Google',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
