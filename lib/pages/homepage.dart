import 'package:flutter/material.dart';

// ignore: camel_case_types
class black_theme extends StatefulWidget {
  const black_theme({super.key});

  @override
  State<black_theme> createState() => _black_themeState();
}

bool darkmode = false;
int number = 1;
String name = "";

// ignore: camel_case_types
class _black_themeState extends State<black_theme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: darkmode ? Colors.grey[300] : Colors.grey[800],
        backgroundColor: darkmode ? Colors.grey[300] : Colors.grey.shade900,

        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: darkmode ? Colors.grey[300] : Colors.grey[900],
                // shape: BoxShape.circle,
                // borderRadius: const BorderRadius.all(Radius.circular(34)),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1),
                  BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 15.0,
                      offset: const Offset(-4.0, -4.0),
                      spreadRadius: 1),
                ],
              ),
              child: Image.asset(
                  cacheWidth: 150,
                  color: darkmode ? Colors.black : Colors.white,
                  filterQuality: FilterQuality.high,
                  'images/image$number.png'),

              //     const Icon(

              //   Icons.star,
              //   size: 120,
              //   color: Colors.black,
              //   // color: darkmode == true ? Colors.black : Colors.white,
              // ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          darkmode = false;
                        });
                      },
                      child: const Text(
                        "Dark",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      onPressed: () {
                        setState(() {
                          darkmode = true;
                        });
                      },
                      child: const Text(
                        "Light",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ],
            ),

// change button

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  onPressed: () {
                    setState(() {
                      if (number == 16) {
                        number = 1;
                      } else {
                        name = "images/image$number.png";
                        number++;
                      }
                    });
                  },
                  child: const Text(
                    "Change",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "SourceSansPro"),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
