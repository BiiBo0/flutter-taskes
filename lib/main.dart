import 'package:flutter/material.dart';

void main() {
  runApp(const businessCard());
}

class businessCard extends StatelessWidget {
  const businessCard();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(40, 68, 97, 1),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 159,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/f_photo.png',
                ),
                radius: 154,
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(9999),
            //   child: Image.asset(
            //     'images/f_photo.png',
            //     width: 410.0,
            //     height: 410.0,
            //   ),
            // ),
            const Spacer(flex: 1),
            const Text(
              'Basel Mohamed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 1),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25.0,
                //fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.white,
                ),
                width: 380.0,
                height: 65.0,
                // color: Colors.white,
                child: const Row(
                  //mainAxisAlignment: MainAxisAlignment.
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.phone,
                        size: 35.0,
                        color: Color.fromRGBO(40, 68, 97, 1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        '01147372733',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(40, 68, 97, 1),
                        ),
                      ),
                    ),
                    //Spacer(flex: 8),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.white,
                ),
                width: 380.0,
                height: 65.0,
                // color: Colors.white,
                child: const Row(
                  //mainAxisAlignment: MainAxisAlignment.
                  children: [
                    //Spacer(flex: 1),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.email,
                        size: 35.0,
                        color: Color.fromRGBO(40, 68, 97, 1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        'bm.sm.ym@gmail.com',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(40, 68, 97, 1),
                        ),
                      ),
                    ),
                    // Spacer(flex: 8),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
