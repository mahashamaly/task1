import 'package:flutter/material.dart';
import 'package:task1/model/servicesinfoModel.dart';

import 'description.dart';
import 'rating.dart';

class ServicesInfo extends StatelessWidget {
        ServicesInfo({
    super.key,
    required this.model
   
  });

final ServicesinfoModel model;


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
                  image: AssetImage(model.services_img),
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
                  img: model.img,
                  name: model.name,
                  job: model.job,
                  description: model.description,
                  rate: model.rate,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
