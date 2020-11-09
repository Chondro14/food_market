part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign up',
      subtitle: 'Register and Eat',
      onBackButtonPressed: () {
        Get.to(SignUpPage());
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'PhoneNumber',
              style: styleBlackText2,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: styleGreyText,
                  hintText: 'Type your PhoneNumber'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'Address',
              style: styleBlackText2,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: styleGreyText,
                  hintText: 'Type your addresss'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'House No.',
              style: styleBlackText2,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: houseNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: styleGreyText,
                  hintText: 'Type your house number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'City',
              style: styleBlackText2,
            ),
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(
                        child: Text('Malang', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Banyuwangi', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Jember', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Lumajang', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Probolinggo', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Bondowoso', style: styleBlackText2)),
                    DropdownMenuItem(
                        child: Text('Sidoarjo', style: styleBlackText2)),
                  ],
                  onChanged: (e) {})),
          Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text('Sign up now',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500)))),
        ],
      ),
    );
  }
}
