import 'package:flutter/material.dart';
class SectionWidgets extends StatelessWidget {
  const SectionWidgets({super.key,required this.sectionTitle});
final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                        Color(0xffC2D7F2),
                       Colors.white,
                      ])
                    ),
                    child: Text(
                     sectionTitle,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "View All ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              );
  }
}