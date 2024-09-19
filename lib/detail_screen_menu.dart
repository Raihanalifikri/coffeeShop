import 'package:coffee_app/model/data_menu_coffee.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/detail_screen_menu.dart';

class DetailScreenMenu extends StatelessWidget {
  const DetailScreenMenu({super.key, required this.menuCoffee});

  final MenuCoffee menuCoffee;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.loose,
                  children: [
                    Container(
                        height: 500,
                        width: double.infinity,
                        child: Image.asset(
                          menuCoffee.gambar,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(208, 89, 89, 91)
                                          .withOpacity(0.7)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 30,
                              )),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(208, 89, 89, 91)
                                                .withOpacity(0.7)),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(208, 89, 89, 91)
                                                .withOpacity(0.7)),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.share_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Container(
                          width: 411.5,
                          height: 570,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 45.0, left: 20.0, right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              menuCoffee.nama,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(width: 100,),
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(50.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    left: 10.0,
                                                    right: 10.0,
                                                    top: 3.0,
                                                    bottom: 3.0,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star_border,
                                                      ),
                                                      Text(
                                                        menuCoffee.rating,
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              menuCoffee.milk,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 29,
                                            height: 29,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                            child: Text(
                                              '999',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            width: 29,
                                            height: 29,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money,
                                                  color: Colors.white,
                                                  size: 22,
                                                ),
                                                Text(
                                                  " : ${menuCoffee.harga}",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.0,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Coffee Size",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white, width: 1),
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 27.0),
                                                child: Text("Small", style: TextStyle(color: Colors.white, fontSize: 18,),),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white, width: 1),
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 27.0),
                                                child: Text("Medium", style: TextStyle(color: Colors.white, fontSize: 18,),),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white, width: 1),
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 27.0),
                                                child: Text("Large", style: TextStyle(color: Colors.white, fontSize: 18,),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: Colors.white,
                                              size: 22,
                                            ),
                                            Text(
                                              " : ${menuCoffee.jam}",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, bottom: 15.0),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  menuCoffee.deskripsi,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
