part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;
  FoodListItem({@required this.food, this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(food.picturePath), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182, //60-12-110
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(food.name,
                  style: styleBlackText1,
                  maxLines: 1,
                  overflow: TextOverflow.clip),
              Text(
                NumberFormat.currency(
                        locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                    .format(food.price),
                style: styleGreyText.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        RatingStars(rating: food.rate)
      ],
    );
  }
}
