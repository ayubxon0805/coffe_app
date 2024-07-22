// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/desc.dart';
import 'package:online_shop/single_item_Screen.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List img = [
      'black',
      'coffe1',
      'icecoffe',
      'Latte',
    ];
    List images = [
      ' Coffe',
      'Expresso',
      'Ice Coffe',
      'Latte',
    ];
    List prices = [
      '40',
      '20',
      '15',
      '10',
    ];

    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              color: const Color(0XFF212325),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 1,
                    color: const Color.fromARGB(255, 241, 234, 234)
                        .withOpacity(0.1)),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SingleScreen(
                          image: img[i],
                          name: images[i],
                        );
                      },
                    ));
                  },
                  child: Container(
                      child: Image.asset(
                    'assets/${img[i]}.png',
                    fit: BoxFit.contain,
                    height: 105,
                    width: 105,
                  )),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      images[i],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Best Coffe',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${prices[i]} \$",
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            // ignore: prefer_const_constructors
                            return DescriptionPage();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10, right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE57734),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(CupertinoIcons.add),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}
