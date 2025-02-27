


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'catalog_screen.dart';
import 'navigation_bar.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            SizedBox(
                width: 500,
                height: 500,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/Rectangle 989.png",
                  fit: BoxFit.cover,
                )),

            //Text

            Padding(
              padding: const EdgeInsets.only( 
                top:40 ,
                left: 30,
                right: 44,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find The",
                    style: GoogleFonts.imprima(
                        fontSize: 45, fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    "Best Collection",
                    style: GoogleFonts.imprima(
                        fontSize: 45, fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    "Get your dream item easily with FashionHub and get other intersting offer",
                    style: GoogleFonts.imprima(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff797780)),
                  ),
                  const SizedBox(height: 30,),
                  Center(
                    child: Row(
                      children: [
                        const SizedBox(width: 15,),
                        // Sign up button
                        GestureDetector(
                          child: Container(
                            width: 150,
                            height: 62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.imprima(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                    
                         const SizedBox(width: 15,),
                                  
                        // Sign In button
                        GestureDetector(
                          onTap: () {
                           Navigator.of(context).pushReplacement( 
                            MaterialPageRoute(builder:(context) {
                              return const NavigationBarScreen(); 
                            },)
                           ); 
                          },
                          child: Container(
                            width: 150,
                            height: 62,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                 color: const Color(0xffFF7A00)
                              ),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: GoogleFonts.imprima(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          
          
          
          
          ],
        ),
      ),
    );
  }
}
