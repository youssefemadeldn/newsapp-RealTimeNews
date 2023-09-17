import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.blueAccent,
            image: const DecorationImage(
              image: AssetImage('assets/sports.avif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Text(
          'heloo everu bodhc havd bjw isdbcjsak jbhjc bkasc jqwj kqwbdwiujx iqbwudwq wxqwbwqw xqkbq xqiubq wxi 1wu1bsi d2ldn ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'heloo everu bodhc havd bjw isdbcjsak jbhjc bkasc jqwj kqwbdwiujx iqbwudwq wxqwbwqw xqkbq xqiubq wxi 1wu1bsi d2ldn ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
