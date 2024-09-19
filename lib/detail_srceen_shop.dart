import 'package:coffee_app/model/data_menu_coffee.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/model/data_coffee_shop.dart';

class DetailSrceenShop extends StatelessWidget {
  const DetailSrceenShop({super.key, required this.coffeeShop});

  final CoffeeShop coffeeShop;

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
                    Image.asset(coffeeShop.gambar),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: Color.fromARGB(208, 89, 89, 91).withOpacity(0.7)
                              ),
                                onPressed: () {
                                Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 30,)
                            ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color.fromARGB(208, 89, 89, 91).withOpacity(0.7)
                                    ),
                                    onPressed: () {
                                    },
                                    icon: Icon(Icons.favorite_border, color: Colors.white, size: 30,)
                                ),
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: Color.fromARGB(208, 89, 89, 91).withOpacity(0.7)
                                    ),
                                    onPressed: () {},
                                    icon: Icon(Icons.share_outlined, color: Colors.white, size: 30,)
                                ),
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
                            padding: const EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(coffeeShop.nama, style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold
                                        ),
                                          textAlign: TextAlign.start,
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 3.0, bottom: 3.0,),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.star_border,),
                                                  Text(coffeeShop.rating, style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined, size: 20, color: Colors.white,),
                                        Text(coffeeShop.lokasi, style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),)
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(Icons.watch_later_outlined, color: Colors.white, size: 20,),
                                                Text(" : ${coffeeShop.jam}", style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(Icons.attach_money, color: Colors.white, size: 20,),
                                                Text(" : ${coffeeShop.harga}", style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                                  child: Text("Description", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),),
                                ),
                                Text(coffeeShop.deskripsi, style: TextStyle(
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



