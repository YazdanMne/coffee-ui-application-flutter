import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/cappuccino.jpg',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260,
              child: Container(
                padding: EdgeInsets.all(40),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Coffee',
                      style: TextStyle(
                        color: Color(0xff100702),
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Cappuccino',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff100702),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'A Cappuccino is an espresso-based coffe'
                      'drink that originated in Italy. and is traditionally'
                      'prepared with steamed milk foam. Variations'
                      'of the drink involve the use of cream instead'
                      'of milk. and flavoring with cinnamon'
                      'or chocolat owder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '\$10.80',
                      style: TextStyle(
                        color: Color(0xff100702),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB98C53),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(23),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {}, child: Text('+')),
                          Text('1'),
                          TextButton(onPressed: () {}, child: Text('-')),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff100702),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'ORDER NOW',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
