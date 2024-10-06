import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text Widget",
          style: TextStyle(
            color: Colors.black,
            fontSize: fontsize * 1.5,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Devansh Dhopte',
                  speed: const Duration(
                    milliseconds: 100
                  ),
                  textStyle: TextStyle(
                    fontSize: fontsize * 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
              totalRepeatCount: 5,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     RotateAnimatedText('Hello',
            //       textStyle: TextStyle(
            //         fontSize: fontsize * 1.5,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //     RotateAnimatedText('World',
            //       textStyle: TextStyle(
            //         fontSize: fontsize * 1.5,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   ],
            // ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Hey, it's me Devansh"),
            ])
          ],
        ),
      ),
    );
  }
}
