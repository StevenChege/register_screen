import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: greenAccent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(.1),
            offset: Offset(1, 0),
            blurRadius: 25,
          ),
        ],
      ),
      child: Center(
        child: Icon(Icons.android, size: 30),
      ),
    );
  }
}
