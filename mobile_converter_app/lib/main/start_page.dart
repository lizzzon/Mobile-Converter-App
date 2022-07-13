import 'package:flutter/material.dart';
import 'package:mobile_converter/utilities/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/main.jpg'),
          ),),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 250, 40, 100),
          child: Center(
            child: Stack(
              children: [
                Text('CONVERTER', style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Montserrat',
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = MyColors.colorBorder,
                ),
                ),
                const Text(
                  'CONVERTER',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Montserrat',
                    color: MyColors.colorText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 100, 50, 100),
                  child: Container(
                      height: 68,
                      width: 221,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: const [
                            BoxShadow(
                                color: MyColors.colorButton,
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(0, 3))
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 40, 10),
                            child: Row(
                              children: [
                                const SizedBox(height: 30),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary: MyColors.colorButton,
                                    textStyle: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  onPressed: () {Navigator.pushNamed(context, '/home');},
                                  child: const Text('StartApp'),
                                ),
                              ],
                            ),
                          )],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
