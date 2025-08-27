import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.rate});
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0XFF827BEB).withAlpha(25),
        borderRadius: BorderRadius.circular(40),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star_rounded, size: 14, color: Colors.purple),
          SizedBox(width: 3),
          Text(
            //يعني إنك بتحولي الرقم لنص (String) وتقصريه لعدد معين من الخانات العشرية:
           rate.toStringAsFixed(1),
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
