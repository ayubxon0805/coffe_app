import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(
          top: 100,
          bottom: 100,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/bg.png',
                ),
                fit: BoxFit.cover,
                opacity: 0.6),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Coffe Shop',
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 50),
            ),
            Column(
              children: [
                const Text(
                  'Do you want to drink some coffe?',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 70,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 152, 0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // ignore: sort_child_properties_last
                    child: const Center(
                      child: Text(
                        'Get Start',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    width: 200,
                    height: 50,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
