# Firebase Authentication with Flutter

This project demonstrates how to integrate Firebase Authentication into a Flutter application.

## Features

- User registration with email and password
- User login with email and password
- Password reset functionality
- User logout
- Firebase authentication state management

## Getting Started

Follow these steps to set up Firebase Authentication in your Flutter project:

### 1. Set Up Firebase Project
- Go to the [Firebase Console](https://console.firebase.google.com/).
- Create a new project or use an existing one.
- Add an Android and/or iOS app to your Firebase project.
- Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) and place it in the appropriate directory of your Flutter project.

### 2. Add Firebase Dependencies
Add the following dependencies to your `pubspec.yaml` file:
```yaml
dependencies:
    firebase_core: ^latest_version
    firebase_auth: ^latest_version
```

Run `flutter pub get` to install the dependencies.

### 3. Initialize Firebase
Initialize Firebase in your `main.dart` file:
```dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MyApp());
}
```

### 4. Implement Authentication
- Use `FirebaseAuth` to handle user registration, login, and logout.
- Example for user registration:
```dart
import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerUser(String email, String password) async {
    try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email,
            password: password,
        );
    } catch (e) {
        print('Error: $e');
    }
}
```

## Resources

- [Firebase Authentication Documentation](https://firebase.google.com/docs/auth)
- [FlutterFire Documentation](https://firebase.flutter.dev/docs/overview)

For additional help, refer to the [Flutter documentation](https://docs.flutter.dev/), which provides tutorials, samples, and a full API reference.
