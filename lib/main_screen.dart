import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(100, 73, 71, 71),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 30.0,
                    right: 10.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jakarta, Indonesia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Jl.Perubahan 1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29.0),
                    child: Stack(
                      children: [
                        Image(image: AssetImage('assets/images/Kipo2.png')),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "COFF33 D4Y",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Text(
                                "OFF 20%",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orangeAccent,
                                    ),
                                    onPressed: () {},
                                    child: Text('Get Discount', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            Icons.arrow_outward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Nearby Shop",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            children: [
                              Text("See All",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              Icon(Icons.arrow_forward, color: Colors.white,),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Row(
                          children: [
                           Container(
                             height: 300,
                             decoration: BoxDecoration(
                               color: Color.fromARGB(190, 58, 53, 53),
                               borderRadius: BorderRadius.circular(40.0),
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                   child: Padding(
                                     padding: const EdgeInsets.all(7.0),
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(39.0),
                                       child: Image.asset(
                                         'assets/images/coshop2.jpg',
                                         height: 180,
                                       ),
                                     ),
                                   ),
                                   ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 10.0),
                                       child: Text("JKT Coffeeion",style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 17,
                                         fontWeight: FontWeight.bold,
                                         letterSpacing: 2.0,
                                       ),
                                         textAlign: TextAlign.start,
                                       ),
                                     ),
                                 Padding(padding: const EdgeInsets.only(left: 7.0, top: 20.0, right: 7.0),
                                 child: Row(
                                   children: [
                                     Container(
                                       child: Row(
                                         children: [
                                           Icon(Icons.location_on_outlined,
                                             color: Colors.white,
                                             size: 27,
                                           ),
                                           Text("1.4KM",
                                           style: TextStyle(
                                            color: Colors.white
                                           ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     SizedBox(width: 62,),
                                     IconButton(onPressed: () {},
                                        icon: Icon(Icons.arrow_outward_outlined,
                                        color: Colors.black,
                                        ),
                                       style: IconButton.styleFrom(
                                         backgroundColor: Colors.white,
                                       ),
                                    ),
                                   ],
                                 ),
                                 ),
                               ],
                             ),
                           ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}