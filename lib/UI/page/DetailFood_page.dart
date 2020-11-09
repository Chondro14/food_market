part of"pages.dart";

class DetailFoodPage extends StatefulWidget {
  final Function onBackPressed;
  final Transaction transaction;
  final int id;
  DetailFoodPage({this.onBackPressed, this.transaction,this.id});

  @override
  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
            child: Hero(
              tag: 'imageFood${widget.id}',
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.transaction.food.picturePath),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  ///backButton
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackPressed != null) {
                            widget.onBackPressed();
                          }
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12),
                          child: Image.asset("assets/back_arrow_white.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 134,
                                  child: Text(
                                    widget.transaction.food.name,
                                    style: styleBlackText1,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                RatingStars(
                                  rating: widget.transaction.food.rate,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (quantity <= 0) {
                                      } else {
                                        quantity--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/btn_min.png"))),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                    quantity.toString(),
                                    textAlign: TextAlign.center,
                                    style: styleBlackText2,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/btn_add.png"))),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                          child: Text(
                            widget.transaction.food.description,
                            style: styleGreyText,
                          ),
                        ),
                        Text(
                          'Ingridients',
                          style: styleBlackText2,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                          child: Text(
                            widget.transaction.food.ingridients,
                            style: styleGreyText,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Total Price",
                                  style: styleGreyText.copyWith(fontSize: 13),
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id-ID',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(quantity *
                                          widget.transaction.food.price),
                                  style: styleBlackText1.copyWith(fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 163,
                              height: 45,
                              child:
                              RaisedButton(
                                onPressed: () {
                                  Get.to(PaymentPage(
                                    transaction: Transaction(
                                        food: widget.transaction.food,
                                        quantity: quantity,
                                        user: mockUser,
                                        total: (widget.transaction.food.price *
                                                    quantity *
                                                    1.1)
                                                .toInt() +
                                            5000),
                                  ));
                                },
                                color: mainColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'Order Now',
                                  style: styleBlackText2.copyWith(
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
