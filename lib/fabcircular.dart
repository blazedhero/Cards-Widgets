import 'package:ee/scratchcard.dart';
import 'package:ee/tindercardswipe.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class FabBar extends StatelessWidget {
  const FabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FabCircularMenu(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TinderCard()),
                );
              },
              icon: Icon(Icons.camera),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScratchCard()),
                );
              },
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.room_service),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.car_crash),
            ),
          ],
        ),
      ),
    );
  }
}
