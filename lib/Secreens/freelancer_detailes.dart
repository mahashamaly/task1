import 'package:flutter/material.dart';
import 'package:task1/model/FrelancarModel.dart';
import 'package:task1/widgets/rating.dart';

class FreelancerDetailes extends StatelessWidget {
  const FreelancerDetailes({super.key});

  @override
  Widget build(BuildContext context) {
FrelancarModel model= ModalRoute.of(context)!.settings.arguments as FrelancarModel;

    return Scaffold(
appBar: AppBar(
  title: Text(model.name),
),
body: Center(
child: Column(
  children: [
Image.asset(model.img),
Text(model.name),
Rating(rate: model.rate)

  ],
),

),

    );
  }
}