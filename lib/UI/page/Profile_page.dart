part of "pages.dart";

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:defaultMargin),
          child: Column(
            children: [
              Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.only(top: 26),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/photo_border.png"))),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                            (context.bloc<UserCubit>().state as UserLoaded).user.picturePath,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: defaultMargin),
                  child: Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.name,
                    style: styleBlackText1,
                  ),
                ),
              ),
              Center(
                child: Text(
                  (context.bloc<UserCubit>().state as UserLoaded).user.email,
                  style: styleGreyText.copyWith(fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(top:defaultMargin),
            child: Column(
          children: [
            CustomTabbar(
              titles: ["Account", "FoodMarket"],
              selectedInt: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Column(
                children: (selectedIndex == 0)
                    ? [
                        Padding(
                          padding:  EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Edit Profile",style:styleBlackText2),
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Image.asset("assets/right_arrow.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Home Address",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Security",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payments",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),

                      ]
                    : [
                  Padding(
                    padding:  EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rate App",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Help Center",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Privacy & Policy",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: defaultMargin,right:defaultMargin,bottom:16),
                    child: GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Terms & Condition",style:styleBlackText2),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset("assets/right_arrow.png"),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
