import 'package:ee/fabcircular.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchCard extends StatefulWidget {
  const ScratchCard({super.key});

  @override
  State<ScratchCard> createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  double Opacity = 0.0;

  Future<void> scratchCardDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            title: const Align(
              alignment: Alignment.center,
              child: Text(
                "Cong you won Scratch card",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            content: StatefulBuilder(
              builder: (context, StateSetter setState) {
                return Scratcher(
                  accuracy: ScratchAccuracy.medium,
                  brushSize: 50,
                  threshold: 50,
                  onThreshold: () {
                    setState(() {
                      Opacity = 1;
                    });
                  },
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 20),
                    opacity: Opacity,
                    child: Container(
                      height: 300,
                      width: 300,
                      alignment: Alignment.center,
                      child: Text(
                        "300\$",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.red,
            onSurface: Colors.black,
            backgroundColor: Colors.lightBlueAccent,
          ),
          child: Text(
            "Check your scratch card here ",
          ),
          onLongPress: () => scratchCardDialog(context),
        ),
      ),
    );
  }
}
