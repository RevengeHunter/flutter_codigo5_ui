import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                    ),
                    Icon(
                      Icons.notifications_none,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Hello Manuel",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 240.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/262524/pexels-photo-262524.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.75),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mulai berolahraga dan mencari teman bersama",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Registrate Ahora",
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFE006F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorías",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWidget(
                        sportName: "Swiming",
                        sportImage: "assets/images/png_swiming_01.png"),
                    ItemGridWidget(
                        sportName: "Basketball",
                        sportImage: "assets/images/png_basketball_01.png"),
                    ItemGridWidget(
                        sportName: "Soccer",
                        sportImage: "assets/images/png_football_01.png"),
                    ItemGridWidget(
                        sportName: "Boxing",
                        sportImage: "assets/images/png_boxing_01.png"),
                    ItemGridWidget(
                        sportName: "Swiming",
                        sportImage: "assets/images/png_swiming_01.png"),
                    ItemGridWidget(
                        sportName: "Basketball",
                        sportImage: "assets/images/png_basketball_01.png"),
                    ItemGridWidget(
                        sportName: "Soccer",
                        sportImage: "assets/images/png_football_01.png"),
                    ItemGridWidget(
                        sportName: "Boxing",
                        sportImage: "assets/images/png_boxing_01.png"),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reservas",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                     children: [
                       ItemListWidget(),
                       ItemListWidget(),
                       ItemListWidget(),
                       ItemListWidget(),
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

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/png_football_01.png',
                scale: 10.0,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                "Yuk sehat bersama!",
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.black.withOpacity(0.25),
              ),
              Container(
                width: 230.0,
                child: Text(
                  "Lapangan Triar Kebon Jeruk, Jakarta to mele saponfu",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  String sportName;
  String sportImage;

  ItemGridWidget({
    required this.sportName,
    required this.sportImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            sportImage,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            sportName,
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
