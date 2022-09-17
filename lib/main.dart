import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_training/calendar_page.dart';

const d_green = Color(0xFF54D3C2);
const d_grey = Color(0xFF424242);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [SearchSection(), HotelSection()],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_outlined,
          color: d_grey,
          size: 20,
        ),
        onPressed: () {},
      ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
      ),
      actions: const [
        Icon(
          Icons.favorite_border_rounded,
          color: d_grey,
          size: 20,
        ),
        Icon(
          Icons.place,
          color: d_grey,
          size: 20,
        )
      ],
      centerTitle: true,
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(children: [
            Expanded(
                child: Container(
              height: 50,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0, 3))
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "London",
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),
              ),
            )),
            const SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ]),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CalendarPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: d_green),
                child: const Icon(Icons.search),
              ),
            )
          ]),
          // const SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose date",
                    style: GoogleFonts.nunito(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("12 Dec - 22 Dec",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 17,
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Number of Rooms,",
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("1 Room - 2 Adults",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 17,
                      )),
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  HotelSection({Key? key}) : super(key: key);
  final List hotelList = [
    {
      "title": "Grand Royl Hotels",
      "place": "Wembley, London",
      "distance": 2,
      "review": 36,
      "picture": "assets/hotel1.jpg",
      "price": "100",
    },
    {
      "title": "Queen Hotel",
      "place": "Grand Royl Hotels",
      "distance": 3,
      "review": 13,
      "picture": "assets/hotel2.jpg",
      "price": "200",
    },
    {
      "title": "Hilton",
      "place": "Wembley, London",
      "distance": 6,
      "review": 88,
      "picture": "assets/hotel3.jpg",
      "price": "150",
    },
    {
      "title": "Grand Royl Hotels",
      "place": "Wembley, London",
      "distance": 11,
      "review": 36,
      "picture": "assets/hotel4.jpg",
      "price": "700",
    },
    {
      "title": "Grand Royl Hotels",
      "place": "Wembley, London",
      "distance": 2,
      "review": 36,
      "picture": "assets/hotel5.jpg",
      "price": "1000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("550 hotels founds",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                Row(children: [
                  Text("Filters",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list_outlined,
                        color: d_green,
                        size: 25,
                      ))
                ])
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotelData: hotel);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final Map hotelData;

  const HotelCard({Key? key, required this.hotelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 4,
                blurRadius: 6,
                offset: const Offset(0, 3)),
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(hotelData['picture']), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                      color: Colors.white,
                      onPressed: () {},
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.favorite_border_rounded,
                        color: d_green,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                Text("\$ ${hotelData['price']}",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['place'],
                    style: GoogleFonts.nunito(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: d_green,
                      size: 14.0,
                    ),
                    Text("${hotelData['distance'].toString()} km to city",
                        style: GoogleFonts.nunito(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ))
                  ],
                ),
                Text('Per night',
                    style: GoogleFonts.nunito(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_border,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("${hotelData['review'].toString()} Review",
                    style: GoogleFonts.nunito(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
