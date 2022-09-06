import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String text;
  const CustomeText({super.key, required this.text});
  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      );
}

class SmallText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  const SmallText({
    super.key,
    required this.text,
    this.textAlign,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}

class MySizedBox extends StatelessWidget {
  final double height;
  final double width;
  const MySizedBox({super.key, required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

class LargeButton extends StatelessWidget {
  final String text;
  final Color color;
  final GestureTapCallback onPressed;

  const LargeButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      color: color,
      height: 60,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}

Widget makeInput({lable, obsecure = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        lable,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsecure,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          enabledBorder: OutlineInputBorder(
              // borderRadius: BorderRadius.all(radius),
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
      // const SizedBox(
      //   height: 20,
      // )
    ],
  );
}
