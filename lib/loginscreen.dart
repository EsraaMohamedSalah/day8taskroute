
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        hintText: 'UserName',
                        labelText: 'UserName',
                        prefixIcon: Icon(
                          Icons.supervised_user_circle,
                          //color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius:
                            BorderRadius.all(Radius.circular(9.0))))),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () => context.go('/profile'),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}