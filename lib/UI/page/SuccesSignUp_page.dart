part of "pages.dart";

class SuccesSignUpPage extends StatefulWidget {
  @override
  _SuccesSignUpPageState createState() => _SuccesSignUpPageState();
}

class _SuccesSignUpPageState extends State<SuccesSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IlustrationPage(
            buttonTap1: () {},
            buttonTitle1: "Find Foods",
            picturePath: "assets/food_wishes.png",
            subtitle:
                "Now you are able to order \n some foods as a self-reward",
            title: "Yeay! Completed"));
  }
}
