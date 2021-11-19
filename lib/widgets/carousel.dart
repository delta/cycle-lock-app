import 'package:cycle_lock/model/slide.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final int index;
  const Carousel(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 500,
              height: 250,
              decoration: BoxDecoration(
                  //shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage(slideList[index].imageUrl),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              slideList[index].title,
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              slideList[index].description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
