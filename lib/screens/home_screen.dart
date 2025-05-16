import 'package:flutter/material.dart';
// You might want to import your login screen if you plan to add a logout button
// Uncomment if you have a login screen to navigate back to

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        // Automatically hide the back button if it's the root of a new navigation stack
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              // --- TODO: Implement actual logout logic ---
              // For example, clear user session, call Firebase signOut, etc.
              debugPrint("Logout button pressed");

              // Navigate back to Login Screen and remove all previous routes
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(builder: (context) => const LoginScreen()), // Make sure LoginScreen is imported
              //   (Route<dynamic> route) => false, // This predicate removes all routes
              // );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logout Tapped (Not Implemented)')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.home_filled,
              size: 100,
              color: Colors.deepPurple, // Changed color for distinction
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to Your App!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'This is your home screen.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                // Example action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Exploring features...')),
                );
              },
              child: const Text('Explore Features'),
            ),
          ],
        ),
      ),
    );
  }
}
