import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';
import 'package:plant_ui/screens/home/components/recomendsplants.dart';
import 'package:plant_ui/screens/home/components/title_with_morebtn.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: [
      HeaderWithSearchBox(size: size),
      TitleWithMoreBtn(
        title: "Recommended",
        press: () {},
      ),
      RecommdendPlant(size: size),
      TitleWithMoreBtn(
        title: "Featured Plants",
        press: () {},
      ),
      FeaturedPlants(),
      SizedBox(height: kDefaultPadding),
    ]));
  }
}
