import 'package:flutter/material.dart';

// `main` function is the entry point of the application
void main() {
  runApp(const BottomSheetApp());
}

// Main application widget
class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});
// build method to build the widget tree
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// HomeScreen widget that contains a button to show the bottom sheet
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
// `showLoginBottomSheet` method to display the bottom sheet when the button is pressed
  void showLoginBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      // `builder` function to build the content of the bottom sheet
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
            // `ListTile` widgets to represent different login options
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Continue with Email'),
                onTap: () {},
              ),
            //  handle tap event for email login
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Continue with Phone'),
                onTap: () {},
              ),
            // handle tap event for phone login
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Continue with password'),
                onTap: () {},
              ),
            // handle tap event for google login
              ListTile(
                leading: const Icon(Icons.close),
                title: const Text('Cancel'),
                onTap: () => Navigator.pop(context),
              ),
              // handle tap event for cancel
            ],
          ),
        );
      },
    );
  }
// build method to build the widget tree for HomeScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet Widget presentation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showLoginBottomSheet(context),
          child: const Text('Continue'),
        ),
      ),
    );
  }
}
