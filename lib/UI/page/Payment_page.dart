part of "pages.dart";

class PaymentPage extends StatefulWidget {
  final Transaction transaction;
  PaymentPage({this.transaction});
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Paynment",
      subtitle: "You deserve better meal",
      onBackButtonPressed: () {
        Get.back();
      },
      backColor: "FAFAFC".toColor(),
      child: Column(
        children: [
          ///Bagian Atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(vertical: 16, horizontal: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Item Ordered",
                  style: styleBlackText2,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.transaction.food.picturePath),
                                  fit: BoxFit.cover),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  2 * defaultMargin -
                                  60 -
                                  12 -
                                  78,
                              child: Text(
                                widget.transaction.food.name,
                                style: styleBlackText2,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: "Rp ",
                                        decimalDigits: 0)
                                    .format(widget.transaction.food.price),
                                style: styleGreyText.copyWith(fontSize: 13))
                          ],
                        )
                      ],
                    ),
                    Text("${widget.transaction.quantity} item's",
                        style: styleGreyText.copyWith(fontSize: 13))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    "Detail Transaction",
                    style: styleBlackText2,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.food.name,
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp ',
                                decimalDigits: 0)
                            .format(widget.transaction.quantity *
                                widget.transaction.food.price),
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Driver",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp ',
                                decimalDigits: 0)
                            .format(5000),
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Tax 10%",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp ',
                                decimalDigits: 0)
                            .format(widget.transaction.quantity *
                                widget.transaction.food.price *
                                0.1),
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Total Price",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp ',
                                decimalDigits: 0)
                            .format(widget.transaction.total),
                        style: styleBlackText2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: "1ABC9C".toColor(),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          /// Bagian Bawah
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(vertical: 16, horizontal: defaultMargin),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    "Deliver to",
                    style: styleBlackText2,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Name",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.name,
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Phone no",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.phoneNumber,
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Address",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.address,
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "House No.",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.houseNumber,
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "City",
                        style: styleGreyText,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        widget.transaction.user.city,
                        style: styleBlackText2,
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 45,
              child: isLoading
                  ? Center(child: loadingIndicator)
                  : RaisedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        bool result = await context
                            .bloc<TransactionCubit>()
                            .submitTransaction(widget.transaction.copyWith(
                                dateTime: DateTime.now(),
                                total: (widget.transaction.food.price *
                                            widget.transaction.quantity *
                                            1.1)
                                        .toInt() +
                                    5000));
                        if (result == true) {
                          Get.to(SuccesOrderPage());
                        } else {
                          setState(() {
                            isLoading = false;
                          });
                          Get.snackbar("", "",
                              backgroundColor: "D9435E".toColor(),
                              icon: Icon(
                                MdiIcons.closeCircleOutline,
                                color: Colors.white,
                              ),
                              titleText: Text("Transaction Failed",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                              messageText: Text("Please Try Again",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white)));
                        }
                      },
                      elevation: 0,
                      color: mainColor,
                      child: Text("Checkout Now",
                          style: styleBlackText2.copyWith(
                            fontWeight: FontWeight.w500,
                          )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ))
        ],
      ),
    );
  }
}
