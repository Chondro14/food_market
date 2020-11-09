part of "widgets.dart";

class OrderListItem extends StatelessWidget {
  final Transaction transaction;
  final double itemWidth;
  OrderListItem({@required this.transaction, this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(transaction.food.picturePath),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182, //60-12-110
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(transaction.food.name,
                  style: styleBlackText1,
                  maxLines: 1,
                  overflow: TextOverflow.clip),
              Text(
                "${transaction.quantity} item's " +
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(transaction.total),
                style: styleGreyText.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        SizedBox(
            width: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(converDateTime(transaction.dateTime)),
                (transaction.transactionStatus == TransactionStatus.canceled)
                    ? Text(
                        "Canceled",
                        style: GoogleFonts.poppins(
                            color: "D9435E".toColor(), fontSize: 10),
                      )
                    : (transaction.transactionStatus ==
                            TransactionStatus.pending)
                        ? Text(
                            "Pending",
                            style: GoogleFonts.poppins(
                                color: "D9435E".toColor(), fontSize: 10),
                          )
                        : (transaction.transactionStatus ==
                                TransactionStatus.on_delivery)
                            ? Text(
                                "On Delivery",
                                style: GoogleFonts.poppins(
                                    color: "1ABC9C".toColor(), fontSize: 10),
                              )
                            : SizedBox()
              ],
            ))
      ],
    );
  }

  String converDateTime(DateTime dateTime) {
    String month;
    switch (dateTime.month) {
      case 1:
        month = "Jan";
        break;
      case 2:
        month = "Feb";
        break;
      case 3:
        month = "Mar";
        break;
      case 4:
        month = "Apr";
        break;
      case 5:
        month = "Mei";
        break;
      case 6:
        month = "Jun";
        break;
      case 7:
        month = "Jul";
        break;
      case 8:
        month = "Agu";
        break;
      case 9:
        month = "Sep";
        break;
      case 10:
        month = "Okt";
        break;
      case 11:
        month = "Nov";
        break;
      case 12:
        month = "Des";
        break;
      default:
    }
    return month + '${dateTime.day},${dateTime.hour},${dateTime.minute}';
  }
}
