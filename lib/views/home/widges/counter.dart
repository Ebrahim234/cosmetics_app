import 'package:cosmetics/core/ui/app_image.dart';
import 'package:flutter/material.dart';



class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  void increase() {
    setState(() {
      counter++;
      print("increased: $counter");
    });
  }

  void decrease() {
    setState(() {
      counter > 1 ? counter-- : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 142,
        height: 42,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff8E8EA9)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: decrease,
                icon: AppImage(image: "remove.svg", height: 2, width: 16),
              ),
              Text(
                "$counter",
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              IconButton(
                onPressed: increase,
                icon: AppImage(image: "add.svg", height: 15, width: 16),
              ),
            ],
          ),
        ),
      );

  }
}
