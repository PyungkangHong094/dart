import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceflutter_two/util/coffee_type.dart';

import '../util/coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //! list of coffee type
  final List coffeetype = [
    //* 커피 타입 [커피타입, 설렉되면]
    [
      'Cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Drink',
      false,
    ],
  ];
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeetype.length; i++) {
        coffeetype[i][1] = false;
      }
      coffeetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[900],
          //! 오른쪽끝
          leading: Icon(Icons.menu),
          //! 왼쪽끝
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(children: [
        //* find the best coffee for you
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Find the best coffee for you",
            style: GoogleFonts.bebasNeue(
              fontSize: 60,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        //* Search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee in here',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )),
          ),
        ),
        SizedBox(
          height: 25,
        ),

        //* horizontal listview coffee type
        Container(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeetype.length,
            itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeetype[index][0],
                isSelected: coffeetype[index][1],
                onTap: () {
                  coffeeTypeSelected(index);
                },
              );
            },
          ),
        ),

        //*Horizontal listveiw for thecoffee list
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //? 커피타일을 만들어서 가져옴
            CoffeeTile(),
            CoffeeTile(),
            CoffeeTile(),
          ],
        ))
      ]),
    );
  }
}
