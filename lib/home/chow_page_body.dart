import 'package:flutter/cupertino.dart';

class ChowPageBody extends StatefulWidget {
  const ChowPageBody({Key? key}) : super(key: key);

  @override
  _ChowPageBodyState createState() => _ChowPageBodyState();
}

class _ChowPageBodyState extends State<ChowPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
        image: DecorationImage(
          image: AssetImage("assets/image/food1.png"),
        ),
      ),
    );
  }
}