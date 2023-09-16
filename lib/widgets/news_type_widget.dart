import 'package:flutter/material.dart';

class NewsType extends StatelessWidget {
  const NewsType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      width: 160,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.black,
        image: const DecorationImage(
          image: AssetImage('assets/business.avif'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          'General',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
