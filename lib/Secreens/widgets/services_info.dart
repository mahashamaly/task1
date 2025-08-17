import 'package:flutter/material.dart';
import 'package:task1/Secreens/widgets/description.dart';
import 'package:task1/Secreens/widgets/rating.dart';

class ServicesInfo extends StatelessWidget {
  const ServicesInfo({
    super.key,
    required this.services_img,
    required this.rate,
    required this.img,
    required this.name,
    required this.job,
    required this.description,
  });
  final String services_img;
  final double rate;
  final String img;
  final String name;
  final String job;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.centerRight,

          clipBehavior: Clip.none,
          children: [
            Container(
              width: 196,
              height: 154,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(services_img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: -160,
              child: Container(
                height: 140,
                width: 216,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Description(
                  img: img,
                  name: name,
                  job: job,
                  description: description,
                  rate: rate,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
