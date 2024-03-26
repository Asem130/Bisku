import 'package:flutter/material.dart';

class RegisterViewBackground extends StatelessWidget {
  const RegisterViewBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black.withOpacity(1.0),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.6), // <-- change this opacity
          ],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: Column(
        children: [
          Image.asset(
            width: width,
            height: 250,
            'assets/images/top.png',
          ),
          SizedBox(
            height: height / 8,
          ),
          Image.asset(
            width: width,
            height: 300,
            'assets/images/register_backgroung.png',
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
