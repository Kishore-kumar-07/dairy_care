import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String txt;
  final double Width;

  const Mybutton({Key? key, required this.txt, required this.Width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:Width,
      decoration: BoxDecoration(
        color: Color(0xff000000),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txt,style: TextStyle(color: Color(0xfff5f7f9) ),),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.arrow_circle_right_outlined,color: Color(0xfff5f7f9),),
            )

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),),
      ),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}
