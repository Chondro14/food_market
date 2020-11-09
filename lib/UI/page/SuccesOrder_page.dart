part of "pages.dart";

class SuccesOrderPage extends StatefulWidget {
  static const String routeName = '/succesOrder';

  @override
  _SuccesOrderPageState createState() => _SuccesOrderPageState();
}

class _SuccesOrderPageState extends State<SuccesOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IlustrationPage(
            buttonTap1: () {Get.to(MainPage(selectedPage:0));},
            buttonTap2: () {Get.to(MainPage(selectedPage:1));},
            buttonTitle1: "Order other food",
            buttonTitle2: "View My Order",
            picturePath: "assets/bike.png",
            subtitle:
                "Just stay at home while we are \n preparing your best foods",
            title: "You've Made Order"));
  }
}
