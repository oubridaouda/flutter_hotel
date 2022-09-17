import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);
const d_grey = Color(0xFF424242);

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PeriodSection(),
            // CalendarSection(),
            // ValidateBookSection()
          ],
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
