part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int selectedIndex) onTap;
  CustomBottomNavbar({this.selectedIndex = 0, this.onTap});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      curve: Curves.decelerate,
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: AnimatedContainer(
                duration: Duration(milliseconds: 800),
                curve: Curves.decelerate,
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_home' +
                            (selectedIndex == 0 ? '.png' : '_normal.png')),
                        fit: BoxFit.contain))),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: AnimatedContainer(
                duration: Duration(milliseconds: 800),
                curve: Curves.decelerate,
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_order' +
                            (selectedIndex == 1 ? '.png' : '_normal.png')),
                        fit: BoxFit.contain))),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 800),
                curve: Curves.decelerate,
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ic_profile' +
                            (selectedIndex == 2 ? '.png' : '_normal.png')),
                        fit: BoxFit.contain))),
          )
        ],
      ),
    );
  }
}
