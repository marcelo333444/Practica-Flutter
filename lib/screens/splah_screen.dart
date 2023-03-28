// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/img/img_main.png'),
              Column(
                children: <Widget>[
                  Text(
                    'Buscar Trabajo',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Mas Facil',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              MaterialButton(
                elevation: 10.0,
                minWidth: 170.0,
                height: 50.0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: const Text(
                  'Pressionar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              )
            ]),
      ),
    );
  }
}
