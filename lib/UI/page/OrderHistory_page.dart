part of "pages.dart";

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> list = transactionList
      .where((element) =>
          element.transactionStatus == TransactionStatus.on_delivery ||
          element.transactionStatus == TransactionStatus.pending)
      .toList();

  List<Transaction> list1 = transactionList
      .where((element) =>
          element.transactionStatus == TransactionStatus.delivered ||
          element.transactionStatus == TransactionStatus.canceled)
      .toList();

  @override
  Widget build(BuildContext context) {
    double listWidthItem =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transactions.length == 0) {
          return IlustrationPage(
            picturePath: 'assets/love_burger.png',
            title: "Ouch! Hungry",
            subtitle: "Seems like you have not \n ordered any food yet",
            buttonTitle1: "Find Foods",
            buttonTap1: () {},
          );
        } else {
          return ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Your Orders", style: styleBlackText1),
                        Text(
                          "Wait for your the best meal",
                          style: styleGreyText.copyWith(
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(children: [
                        CustomTabbar(
                          titles: ["In Proggres", "Past Orders"],
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
                        Builder(
                          builder: (_) {
                            List<Transaction> transaction = (selectedIndex == 0)
                                ? state.transactions
                                    .where((element) =>
                                        element.transactionStatus ==
                                            TransactionStatus.on_delivery ||
                                        element.transactionStatus ==
                                            TransactionStatus.pending)
                                    .toList()
                                : state.transactions
                                    .where((element) =>
                                        element.transactionStatus ==
                                            TransactionStatus.delivered ||
                                        element.transactionStatus ==
                                            TransactionStatus.canceled)
                                    .toList();
                            return Column(
                              children: (selectedIndex == 0 ? list : list1)
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.only(
                                            right: defaultMargin,
                                            left: defaultMargin,
                                            bottom: 16),
                                        child: OrderListItem(
                                          transaction: e,
                                          itemWidth: listWidthItem,
                                        ),
                                      ))
                                  .toList(),
                            );
                          },
                        ),
                      ]))
                ],
              ),
            ],
          );
        }
      }
    });
  }
}
/*

    if (list.length == 0 && list1.length == 0) {

    } else {

    }
  }
}*/
