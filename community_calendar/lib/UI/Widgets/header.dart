import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.03,
        MediaQuery.of(context).size.width * 0.03,
        MediaQuery.of(context).size.width * 0.03,
        MediaQuery.of(context).size.width * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
        ],
      ),),
    );
  }
}
