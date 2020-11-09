part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listWidthItem =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Material(
      child: ListView(
        children: [
          Column(
            children: [
              /// Header
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                height: 100,
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Market',
                            style: styleBlackText1,
                          ),
                          Text(
                            "Let's get Some Food",
                            style: styleGreyText.copyWith(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          image: DecorationImage(
                              image: NetworkImage((context
                                      .bloc<UserCubit>()
                                      .state as UserLoaded)
                                  .user
                                  .picturePath),
                              fit: BoxFit.cover),
                        ),
                      )
                    ]),
              )

              ///Carousel
              ,
              Container(
                width: double.infinity,
                height: 258,
                color: Colors.white,
                child: BlocBuilder<FoodCubit, FoodState>(
                    builder: (_, state) => (state is FoodLoaded)
                        ? ListView(
                            scrollDirection: Axis.horizontal,
                            children: state.food
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                          left: (e == foodList.first)
                                              ? defaultMargin
                                              : 0,
                                          right: defaultMargin,
                                          bottom: 8,
                                          top: 8),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(DetailFoodPage(
                                            transaction: Transaction(
                                                food: e,
                                                user: (context
                                                        .bloc<UserCubit>()
                                                        .state as UserLoaded)
                                                    .user),
                                            onBackPressed: () {
                                              Get.back();
                                            },
                                          ));
                                        },
                                        child: FoodCard(
                                          food: e,
                                        ),
                                      ),
                                    ))
                                .toList())
                        : Center(child: loadingIndicator)),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabbar(
                      titles: ['New Tastes', 'Popular', 'Recomended'],
                      selectedInt: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    BlocBuilder<FoodCubit, FoodState>(
                      builder: (_, state) {
                        if (state is FoodLoaded) {
                          List<Food> foods = state.food.where((elements) =>
                              elements.foodType.contains((selectedIndex == 0)
                                  ? FoodType.new_food
                                  : (selectedIndex == 1)
                                      ? FoodType.popular
                                      : FoodType.recomended)).toList();
                          return Column(
                            children: foods
                                .map((e) => Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          defaultMargin, 0, defaultMargin, 16),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(DetailFoodPage(
                                            transaction: Transaction(
                                                food: e,
                                                user: mockUser,
                                                id: e.id),
                                            onBackPressed: () {
                                              Get.back();
                                            },
                                          ));
                                        },
                                        child: Hero(
                                          tag: 'imageFood${e.id}',
                                          child: FoodListItem(
                                            food: e,
                                            itemWidth: listWidthItem,
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          );
                        } else {
                          return Center(child: loadingIndicator);
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
