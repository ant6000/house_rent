import 'package:flutter/material.dart';
import 'package:house_rent/views/widgets/house_card_big.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';
import 'package:parallax_cards/parallax_cards.dart';

class SeeMorePage extends StatelessWidget {
  final String type;
  SeeMorePage({super.key, required this.type});

  final List<String> imageList = [
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
    'lib/assets/home1.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: type == 'grid'
              ? GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 6),
                  itemBuilder: (context, index) {
                    return HouseCardBig();
                  },
                )
              : ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: HouseCardSmall(),
                    );
                  },
                )),
    );
  }
}
