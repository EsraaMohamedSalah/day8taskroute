import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Flexible(
              child: Text(" C#    MVC    Asp.net   Flutter   Dart   Java   ",
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){whatsApp();},
                child: const Text('Contact me on whatsapp'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
whatsApp() {
  return launchUrl(
    Uri.parse(
      //'https://wa.me/1234567890' //you use this url also
      'whatsapp://send?phone=00201229074046',//put your number here
    ),
  );
}