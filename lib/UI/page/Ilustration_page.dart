part of "pages.dart";

class IlustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;
  IlustrationPage(
      {@required this.buttonTap1,
      this.buttonTap2,
      @required this.buttonTitle1,
      this.buttonTitle2,
      @required this.picturePath,
      @required this.subtitle,
      @required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(picturePath)),
            )),
        Text(
          title,
          style: styleBlackText2.copyWith(fontSize: 20),
        ),
        Text(
          subtitle,
          style: styleGreyText.copyWith(fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 12),
          width: 200,
          height: 45,
          child: RaisedButton(
              onPressed: buttonTap1,
              color: mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(buttonTitle1,
                  style:
                      styleBlackText2.copyWith(fontWeight: FontWeight.w500))),
        ),
        (buttonTitle2 == null)
            ? SizedBox()
            : SizedBox(
                width: 200,
                height: 45,
                child: RaisedButton(
                    onPressed: buttonTap2,
                    color: "8D92A3".toColor(),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(buttonTitle2,
                        style: styleBlackText2.copyWith(
                            fontWeight: FontWeight.w500))),
              )
      ],
    ));
  }
}