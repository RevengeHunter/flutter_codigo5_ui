import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Login03Page extends StatelessWidget {
  const Login03Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      login03_pageColorSecondaryLogin,
                      login03_pageColorPrimaryLogin,
                    ],
                  ),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkirin",
                          style: GoogleFonts.openSans(
                            color: login03_pageColorSeptenaryLogin,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "24°C",
                              style: GoogleFonts.openSans(
                                color: login03_pageColorSeptenaryLogin,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.0,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/bxl-sun-cloud.svg',
                              color: Colors.white,
                              height: 25,
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: (MediaQuery.of(context).size.width) * 0.7,
                      ),
                      child: Text(
                        "Let's find a place for you",
                        style: GoogleFonts.openSans(
                          color: login03_pageColorSeptenaryLogin,
                          fontWeight: FontWeight.w700,
                          fontSize: 34.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: login03_pageColorSenaryLogin,
                            style: GoogleFonts.openSans(
                              color: login03_pageColorSenaryLogin,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: login03_pageColorSenaryLogin,
                              ),
                              hintText: "Find parking place",
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  color: kColorTertiaryLogin,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  color: kColorTertiaryLogin,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Container(
                          height: 48.0,
                          width: 48.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(colors: [
                                login03_pageColorTertiaryLogin,
                                login03_pageColorQuaternaryLogin,
                              ])),
                          child: Icon(
                            Icons.thumbs_up_down_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 14.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parking Near You",
                          style: GoogleFonts.openSans(
                            color: login03_pageColorPrimaryLogin,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View More",
                                style: TextStyle(
                                  color: login03_pageColorQuaternaryLogin,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: login03_pageColorQuaternaryLogin,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(vertical: 20.0),
                    //   height: 200.0,
                    //   child: ListView(
                    //     scrollDirection: Axis.horizontal,
                    //     children: [
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //       ItemSliderWidget(),
                    //     ],
                    //   ),
                    // ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                          ItemSliderWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "History Parking",
                      style: GoogleFonts.openSans(
                        color: login03_pageColorPrimaryLogin,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ItemHistoryWidget(),
                    ItemHistoryWidget(),
                    ItemHistoryWidget(),
                    ItemHistoryWidget(),
                    ItemHistoryWidget(),
                    ItemHistoryWidget(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.07),
                              blurRadius: 12,
                              offset: Offset(4, 4),
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/scooter01.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Block A Sarimi",
                                  style: GoogleFonts.openSans(
                                    color: login03_pageColorPrimaryLogin,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "Desa Maju Mundur and others you may know",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.openSans(
                                    color: login03_pageColorSenaryLogin,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "05, Sep 2021",
                                style: GoogleFonts.openSans(
                                  color: login03_pageColorSenaryLogin,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "\$20.00",
                                style: GoogleFonts.openSans(
                                  color: login03_pageColorQuinaryLogin,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
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
            ],
          ),
        ),
      ),
    );
  }
}

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 15.0,
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 12,
              offset: Offset(4, 4),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/coche01.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Block A Sarimi",
                  style: GoogleFonts.openSans(
                    color: login03_pageColorPrimaryLogin,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Desa Maju Mundur and others you may know",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    color: login03_pageColorSenaryLogin,
                    fontWeight: FontWeight.w700,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05, Sep 2021",
                style: GoogleFonts.openSans(
                  color: login03_pageColorSenaryLogin,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                "\$20.00",
                style: GoogleFonts.openSans(
                  color: login03_pageColorQuinaryLogin,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      width: 150,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(14.0),
          //   child: Image.asset(
          //     'assets/images/map02.png',
          //     width: 150,
          //     height: 110,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
            height: 110,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/map02.png'),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 10,
                      offset: const Offset(4, 4)),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bloc C Benyamin",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    color: login03_pageColorPrimaryLogin,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "Jl. Kita Berduanmente Shu Long",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    color: login03_pageColorSenaryLogin,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    Text(
                      "Open ",
                      style: GoogleFonts.openSans(
                        color: login03_pageColorQuinaryLogin,
                        fontWeight: FontWeight.w900,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "· 07:00 - 22:00",
                      style: GoogleFonts.openSans(
                        color: login03_pageColorSenaryLogin,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
