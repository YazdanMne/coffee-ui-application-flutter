import 'package:flutter/material.dart';
import 'package:ui_caffe_app/detail_screen.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.height,
            child: Image.asset(
              'images/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(.6),
                ],
              ),
            ),
            child: Image.asset('images/coffee.png'),
          ),
          Positioned(
            top: 70,
            child: Text(
              'ITS GREAT DAY FOR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffB98c53),
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: Text(
              'Coffee',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              height: 60,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffB98C53),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(),
                  ),
                ),
                child: Text(
                  'ORDER NOW',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
