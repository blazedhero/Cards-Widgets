import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class TinderCard extends StatefulWidget {
  const TinderCard({super.key});

  @override
  State<TinderCard> createState() => _TinderCardState();
}

class _TinderCardState extends State<TinderCard> with TickerProviderStateMixin {
  List<String> Cardimages = [
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Tinder",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        child: TinderSwapCard(
          orientation: AmassOrientation.BOTTOM,
          totalNum: 4,
          stackNum: 4,
          swipeEdge: 4.0,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          minHeight: MediaQuery.of(context).size.height * 0.8,
          cardBuilder: (context, index) => Card(
            child: Image.asset('${Cardimages[index]}'),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            if (align.x < 0) {
            } else if (align.y < 0) {}
          },
          swipeCompleteCallback:
              (CardSwipeOrientation orientation, int index) {},
        ),
      ),
    );
  }
}
