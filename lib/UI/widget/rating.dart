part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  RatingStars({this.rating});
  @override
  Widget build(BuildContext context) {
    int numberOfStars = rating.round();
    return Row(
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 16,
                    color: mainColor,
                  )) +
          [
            SizedBox(
              width: 4,
            ),
            Text(
              rating.toString(),
              style: styleGreyText.copyWith(fontSize: 12),
            )
          ],
    );
  }
}
