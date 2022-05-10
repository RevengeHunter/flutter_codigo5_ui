import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Login02Page extends StatelessWidget {
  const Login02Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo - Imagen
          Stack(
            children: [
              Positioned(
                top: -150.0,
                right: -150.0,
                child: MyCircleWidget(
                  radius: 200.0,
                  colors: [
                    login02_pageColorSecondaryLogin,
                    login02_pageColorQuinaryLogin,
                  ],
                ),
              ),
              Positioned(
                bottom: -150.0,
                left: -100.0,
                child: MyCircleWidget(
                  radius: 140.0,
                  colors: [
                    login02_pageColorPrimaryLogin,
                    login02_pageColorQuaternaryLogin,
                  ],
                ),
              ),
              Positioned(
                top: 80.0,
                left: 30.0,
                child: MyCircleWidget(
                  radius: 20.0,
                  colors: [
                    login02_pageColorPrimaryLogin,
                    login02_pageColorQuaternaryLogin,
                  ],
                ),
              ),
            ],
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Your Account!",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          color: login02_pageColorTertiaryLogin,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      TextField(
                        cursorColor: login02_pageColorSenaryLogin,
                        style: TextStyle(
                          color: login02_pageColorPrimaryLogin,
                          fontSize: 14.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email address",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: login02_pageColorSenaryLogin,
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: login02_pageColorSenaryLogin,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: login02_pageColorPrimaryLogin,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const TextField(
                        obscureText: true,
                        cursorColor: login02_pageColorSenaryLogin,
                        style: TextStyle(
                          color: login02_pageColorPrimaryLogin,
                          fontSize: 14.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: login02_pageColorSenaryLogin,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: login02_pageColorSenaryLogin,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_sharp,
                            color: login02_pageColorSenaryLogin,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: login02_pageColorPrimaryLogin,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 58.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              login02_pageColorSecondaryLogin,
                              login02_pageColorQuinaryLogin,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: login02_pageColorSecondaryLogin,
                              offset: const Offset(6, 6),
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: Text(
                          "Create Account",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),

                      /*En un ElevatedButton no se puede aplicar el color gradiente*/
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   child: Container(
                      //     width: double.infinity,
                      //     margin: EdgeInsets.symmetric(
                      //       vertical: 14.0,
                      //     ),
                      //     child: Text(
                      //       "Create Account",
                      //       textAlign: TextAlign.center,
                      //       style: GoogleFonts.lato(
                      //         color: Colors.white,
                      //         fontSize: 14.0,
                      //         fontWeight: FontWeight.w800,
                      //       ),
                      //     ),
                      //   ),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: login02_pageColorSeptenaryLogin,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(25.0),
                      //     ),
                      //   ),
                      // ),

                      /*Se puede envolver al elevated button en un container*/
                      // Container(
                      //   color: Colors.red,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       elevation: 0,
                      //       primary: Colors.transparent,
                      //     ),
                      //     child: Text(
                      //       "Create Account",
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;

  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0],
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
