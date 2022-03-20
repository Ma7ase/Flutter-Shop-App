import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> images = [
  "assets/slider1.jpeg",
  "assets/slider2.jpg",
  'assets/slider3.jpg',
  'assets/slider4.jpg',
  'assets/slider5.png',
  'assets/slider6.webp',
  'assets/slider7.webp'
];

final List<String> images2 = [
  "assets/slide_top_cat.jpg",
  "assets/slide_top_cat.jpg",
  "assets/slide_top_cat.jpg"
];

/*
final List<String> images = [
  'https://mendoza.nd.edu/wp-content/uploads/2021/01/bits-e1611847851285-1440x810.jpeg',
  'https://images.squarespace-cdn.com/content/v1/5269fbd3e4b0eb2b76ccc1db/1599073040137-Z7B1K9GEAFASNS0R0MKC/best-computer-science-schools.jpg',
  'https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1533884908000/photosp/7d291a4a-1ce2-4632-9c94-35bfa1454c2b/stock-photo-technology-girl-woman-laptop-computer-work-study-programmer-using-laptop-7d291a4a-1ce2-4632-9c94-35bfa1454c2b.jpg',
  'https://burst.shopifycdn.com/photos/coding-on-laptop.jpg?width=1200&format=pjpg&exif=0&iptc=0',
  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a9a39540-9059-498d-a285-3b958ebaa3c9/d4hevnt-d5d8508b-a3ed-43a9-bda3-b059254efa44.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E5YTM5NTQwLTkwNTktNDk4ZC1hMjg1LTNiOTU4ZWJhYTNjOVwvZDRoZXZudC1kNWQ4NTA4Yi1hM2VkLTQzYTktYmRhMy1iMDU5MjU0ZWZhNDQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.rVZ9J_p1zdJos-yaAuT5uZil7nwWktL-B6FyekCDw6Q',
  'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
  'https://images.unsplash.com/photo-1531538606174-0f90ff5dce83?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
];
*/
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Usell Up"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: ListView(
          children: [
            CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Center(
                    child: Image.asset(images[index],
                        //child: Image.network(images[index],
                        fit: BoxFit.cover,
                        width: 1000));
              },
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.grey.withOpacity(0.1),
                      child: const Text(
                        "Best practice Definition & Meaning",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin:
                        EdgeInsets.only(right: 5, top: 5, left: 50, bottom: 5),
                    height: 30,
                    width: 80,
                    // width: MediaQuery.of(context).size.width - 60,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Center(child: Text('SHOP')),
                  )),
                ],
              ),
            ),
            //category
            Container(
              height: 150,
              color: Colors.grey.withOpacity(0.1),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    //padding: EdgeInsets.all(13),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        child: Image.asset(
                          "assets/category2.png",
                          //color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        child: Text("Main", textAlign: TextAlign.center),
                      ),
                      Container(
                        child: Text("Category1", textAlign: TextAlign.center),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5, top: 5, bottom: 5),
                    //padding: EdgeInsets.all(13),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        child: Image.asset(
                          "assets/category2.png",
                          //color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        child: Text("Main", textAlign: TextAlign.center),
                      ),
                      Container(
                        child: Text("Category2", textAlign: TextAlign.center),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5, top: 5, bottom: 5),
                    //padding: EdgeInsets.all(13),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        child: Image.asset(
                          "assets/category2.png",
                          //color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        child: Text("Main", textAlign: TextAlign.center),
                      ),
                      Container(
                        child: Text("Category3", textAlign: TextAlign.center),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5, top: 5, bottom: 5),
                    //padding: EdgeInsets.all(13),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        child: Image.asset(
                          "assets/category2.png",
                          //color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        child: Text("Main", textAlign: TextAlign.center),
                      ),
                      Container(
                        child: Text("Category4", textAlign: TextAlign.center),
                      )
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
                    //padding: EdgeInsets.all(13),
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Image.asset(
                          "assets/category2.png",
                          //color: Colors.green,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const Text("Main", textAlign: TextAlign.center),
                      const Text("Category5", textAlign: TextAlign.center)
                    ]),
                  ),
                ],
              ),
            ),

            Container(
                color: Colors.blueGrey.withOpacity(0.1),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "#BEST TITLE",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w700),
                )),

            Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 50,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                ))
              ],
            ),

            Container(
                margin: EdgeInsets.only(top: 5),
                color: Colors.blueGrey.withOpacity(0.1),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "#SHOP BY CATEGORY",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w700),
                )),

            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5, top: 5, left: 10),
                        child: Image.asset(
                          "assets/category2.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: const Text("Sub Catogrey",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(bottom: 5, top: 5, left: 10),
                        child: Image.asset(
                          "assets/category2.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: const Text("Sub Catogrey",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              itemCount: images2.length,
              options: CarouselOptions(
                height: 170,
                autoPlay: true,
                aspectRatio: 2.0, viewportFraction: 1,

                //enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Center(
                    child: Image.asset(images2[index],
                        //child: Image.network(images[index],
                        fit: BoxFit.cover,
                        width: 1000));
              },
            ),
            /*
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                )),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(children: [
                    /*Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/hp1.jfif",
                      ),
                    ),*/
                    Stack(children: [
                      const Center(
                        child: FadeInImage(
                            placeholder: AssetImage('assets/hp1.jfif'),
                            image: AssetImage('assets/hp1.jfif')),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 60,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        child: Image.asset(
                          'assets/star.png',
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(left: 90),
                        margin: EdgeInsets.only(left: 70, top: 60),

                        //alignment: Alignment.bottomCenter,
                        height: 20, width: 70,
                        //color: Colors.blueGrey.withOpacity(0.4),
                        //color: Colors.blueGrey.withOpacity(0.5),
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: const Center(
                          child: Text('3 KM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]),
                    const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          // ignore: prefer_const_constructors
                          TextSpan(
                            text: '\0.00/',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "0.00/",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Product Service",
                    ),
                    const Text(
                      "Title Product ",
                    )
                  ]),
                ))
              ],
            ),*/
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/category2.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/shop.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/camera.PNG",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/explore.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/category2.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
