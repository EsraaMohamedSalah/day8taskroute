import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Screen')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blueGrey)),
                  child:  Image.asset('assets/images/1077114.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Padding(
                              padding: const EdgeInsets.all(12.0),

                              child: Text(
                                  'Name :   Esraa Muhamed Gaballa',
                                style: TextStyle(color: Colors.orange),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                  'Phone : 6666666666',
                                  style: TextStyle(color: Colors.pink),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                  style: TextStyle(color: Colors.cyan),
                                  'Faculty : Engineering Alexandria University'
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () => context.go('/details'),
                                child: const Text('My Skills'),
                              ),
                              width: 150,
                              height: 50,
                            ),
                          ),



                        ]),
                  )),
            ),
          ],
        ),
      ),

    );
  }
}