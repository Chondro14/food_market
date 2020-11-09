part of 'pages.dart';

class MainPage extends StatefulWidget {
  int selectedPage ;
  MainPage({this.selectedPage=0});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController ;
  int selectedPage ;
  @override
  void initState(){
    super.initState();
    selectedPage=widget.selectedPage;
    pageController = PageController(initialPage: selectedPage);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: 'FAFAFC'.toColor(),
          )),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  if (selectedPage != null) {
                    selectedPage = index;
                  }
                });
              },
              children: [
                Center(child: FoodPage()),
                Center(child: Material(child: OrderHistoryPage())),
                Center(
                  child: ProfilePage(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavbar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                  pageController.jumpToPage(selectedPage);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
