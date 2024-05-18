import 'dart:ffi';

import 'package:buburger_app/pages/register_page.dart';
import 'package:buburger_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height * 0.10),
        child: ListView(
          children: [
            Text("Masuk",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                )),
            SizedBox(
              height: 10,
            ),
            Text("Masuk dengan akun yang terdaftar",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 17,
                )),
            SizedBox(
              height: 20,
            ),

            //email
            Text("Email",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
              keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Email",
              hintStyle: greyTextstyle,
            )),
            SizedBox(
              height: 10,
            ),

            //password
            Text("Password",
                style: blackTextstyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(
              height: 10,
            ),
            TextFormField( // buat garis yang bisa di ketik user
              keyboardType: TextInputType.visiblePassword, // pakai .phone untuk no hp
              obscureText: true, // membuat password yg di input jadi ********
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.visibility),),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderColor),
              ),
              hintText: "Masukkan Password",
              hintStyle: greyTextstyle,
            )),

            SizedBox(height: 7,),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Lupa Password", style: secondaryTextstyle,),
            ),
            SizedBox(height: 60,),

            //buttom
            Container(
              height: 55,

              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
              onPressed: null, 
              child: Text("Masuk", 
              style: blackTextstyle,),
              ),
            ),

            //belum punya akun? ....
            SizedBox(height:120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?", style: blackTextstyle,),
                GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(" Daftar", style: secondaryTextstyle,)),
              ],
            )


          ],
        ),
      ),
    );
  }
}
