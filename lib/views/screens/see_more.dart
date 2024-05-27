import 'package:flutter/material.dart';
import 'package:house_rent/views/widgets/house_card_big.dart';
import 'package:house_rent/views/widgets/house_card_small.dart';

class SeeMorePage extends StatelessWidget {
  final String type;
  const SeeMorePage({super.key, required this.type});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: type == 'grid'
              ? GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const HouseCardBig();
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
