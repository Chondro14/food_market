part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedInt;
  final List<String> titles;
  final Function(int) onTap;
  CustomTabbar({this.onTap, this.selectedInt = 0, @required this.titles});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 50,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 48),
              height: 1,
              color: "F2F2F2".toColor(),
            ),
            Row(
              children: titles
                  .map((e) => Padding(
                        padding: EdgeInsets.only(
                          left: defaultMargin,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (onTap != null) {
                                  onTap(titles.indexOf(e));
                                }
                              },
                              child: Text(e,
                                  style: (titles.indexOf(e) == selectedInt)
                                      ? styleBlackText2.copyWith(
                                          fontWeight: FontWeight.w300)
                                      : styleGreyText.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300)),
                            ),
                            Container(
                              width: 40,
                              height: 3,
                              margin: EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.5),
                                  color: (titles.indexOf(e) == selectedInt)
                                      ? "020202".toColor()
                                      : Colors.transparent),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
