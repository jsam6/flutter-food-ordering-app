import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
    final int price, numOfReviews;
    final double rating;
    final String name;
    final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key? key, required this.price, required this.numOfReviews, required this.rating, required this.name, required this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
          children: [
              Expanded(
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text( name, style: Theme.of(context).textTheme.headline5,),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SmoothStarRating(
                                borderColor: PRIMARY_COLOR,
                                rating: 4,
                                onRated: onRatingChanged
                            ),
                            SizedBox(width: 10,),
                            Text("$numOfReviews Reviews")
                          ],
                        )
                  ],)
              ),
              priceTag(context, price: price)
          ],
      ),
    );
  }

    ClipPath priceTag(BuildContext context, {required int price}) {
        return ClipPath(
            clipper: PricerClipper(),
            child: Container(
                
                height: 66,
                width: 65,
                color: PRIMARY_COLOR,
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.topCenter,
                child: Text("\$$price", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
            ),
        );
    }
}

class PricerClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}