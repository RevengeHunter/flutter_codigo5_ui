import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xffC1D6F4),
                              size: 14.0,
                            ),
                            Text(
                              "Location",
                              style: GoogleFonts.montserrat(
                                fontSize: 12.0,
                                color: Colors.black.withOpacity(0.45),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Purbalingga, Jawa Tengah",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              offset: const Offset(4, 4),
                              blurRadius: 14.0),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.black.withOpacity(0.25),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.4)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemCategoryListWidget(
                        nombre: "House",
                        icondata: Icon(Icons.house),
                      ),
                      ItemCategoryListWidget(
                        nombre: "Hotel",
                        icondata: Icon(Icons.hotel),
                      ),
                      ItemCategoryListWidget(
                        nombre: "Apartment",
                        icondata: Icon(Icons.apartment),
                      ),
                      ItemCategoryListWidget(
                        nombre: "Hospital",
                        icondata: Icon(Icons.gite),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemRecomendationListWidget(
                          image:
                              "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                      ItemRecomendationListWidget(
                          image:
                              "https://images.pexels.com/photos/751268/pexels-photo-751268.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                      ItemRecomendationListWidget(
                          image:
                              "https://images.pexels.com/photos/261395/pexels-photo-261395.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 1.0,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 1.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.05,
                        ),
                        offset: Offset(4, 4),
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 50.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/261395/pexels-photo-261395.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                          ),
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Padanaran House",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFBC526),
                                    size: 10.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFBC526),
                                    size: 10.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFBC526),
                                    size: 10.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFBC526),
                                    size: 10.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff8D8E94),
                                    size: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "4.5",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff8D8E94),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xff8D8E94),
                              size: 12.0,
                            ),
                            Text(
                              "Padarama, Jowa Tongah",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff8D8E94),
                                fontSize: 8,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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

class ItemRecomendationListWidget extends StatelessWidget {
  String image;

  ItemRecomendationListWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(4, 4),
            blurRadius: 10.0,
          ),
        ],
      ),
      width: 160.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Minimalist House",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ),
              Icon(
                Icons.star,
                color: Color(0xffFBC526),
                size: 10.0,
              ),
              Text(
                "4.5",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "\$734",
                        style: GoogleFonts.montserrat(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "/Month",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff8D8E94),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff8D8E94),
                        size: 12.0,
                      ),
                      Text(
                        "Padarama, Jowa Tongah",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff8D8E94),
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Icon(
                  Icons.bookmark,
                  color: Color(0xff8D8E94),
                  size: 18.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemCategoryListWidget extends StatelessWidget {
  String nombre;
  Icon icondata;

  ItemCategoryListWidget({required this.nombre, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF0F3FE),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          icondata,
          const SizedBox(
            width: 5.0,
          ),
          Text(
            nombre,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
