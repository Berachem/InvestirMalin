import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 20,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.25),
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff4338CA),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
