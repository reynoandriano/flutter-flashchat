import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat/screens/welcome_screen.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registration_screen.dart';
import 'package:chat/screens/chat_screen.dart';

// void main() => runApp(const FlashChat());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //   apiKey: 'AIzaSyCTAXKiwaXnq32O4ldJ1kYILIS3LpJZsfQ',
      //   appId: '1:513453653994:ios:98a3d340d7951373affc93',
      //   messagingSenderId: '513453653994',
      //   projectId: 'flash-chat-691a6',
      //   authDomain: 'flash-chat-691a6.firebaseapp.com',
      //   iosClientId:
      //       '448618578101-m53gtqfnqipj12pts10590l37npccd2r.apps.googleusercontent.com',
      // ),
      );
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
      // home: const WelcomeScreen(),
    );
  }
}
