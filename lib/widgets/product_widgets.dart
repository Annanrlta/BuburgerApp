import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';

class ProductWidgest extends StatelessWidget {
ProductWidgest({super.key, required this.nama, required this.imageUrl, required this.harga });

  // buat variable untuk menerima data
  String nama, imageUrl, harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset(imageUrl, fit: BoxFit.cover,),

        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(nama, style: blackTextstyle.copyWith(
            fontWeight: FontWeight.w600,
          ), ),
        ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(harga, style: greyTextstyle,),
            ),
    
        ],
      ),
    );
  }
}