import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final padding = width * 0.05;
    final fontSize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' My Visa Card',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize * 1.9,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0xFFF9D3BE),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: padding * 0.5,
              right: padding * 0.5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.blueAccent,
                      Colors.blue,
                      Colors.deepPurple,
                      Colors.purple,
                    ],
                    tileMode: TileMode.mirror
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                height: height * 0.33,
                width: width * 0.87,
              ),
            ),
            Positioned(
              top: height * 0.30,
              left: padding * 1.5,
              child: Stack(
                children: [
                  Text(
                    'Revolut',
                    style: GoogleFonts.baloo2(
                    fontSize: fontSize * 2,
                    fontStyle: FontStyle.italic,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Colors.white,
                    ),
                  ),
                  Text(
                    'Revolut',
                    style: GoogleFonts.baloo2(
                      fontSize: fontSize * 2,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ]
              ),
            ),
            Positioned(
              top: height * 0.305,
              left: padding * 17.0,
              child: Transform.rotate(
                angle: 1.55,
                child: Icon(
                  Icons.wifi_outlined,
                  size: fontSize * 1.7,
                ),
              ),
            ),
            Positioned(
              top: height * 0.312,
              left: padding * 1.7,
              child: Image(
                image: AssetImage('assets/sim-card.png'),
                height: height * 0.2,
                width: width * 0.2,
              ),
            ),
            Positioned(
              top: height * 0.46,
              left: padding * 2.3,
              child: Text('4199  2204  4297  3167',
                style: GoogleFonts.ptSans(
                  fontSize: fontSize * 1.6,
                  color: Colors.white30,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            // Positioned(
            //   top: height * 0.513,
            //   left: padding * 7.8,
            //   child: Text('Valid Upto',
            //     style: TextStyle(
            //       color: Colors.white30,
            //       fontWeight: FontWeight.w600,
            //       fontSize: fontSize * 0.8,
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: height * 0.528,
            //   left: padding * 8.0,
            //   child: Text('09/22',
            //     style: GoogleFonts.ptSans(
            //         fontSize: fontSize * 1.3,
            //         color: Colors.white30,
            //         fontWeight: FontWeight.w500
            //     ),
            //   ),
            // ),
            Positioned(
              top: height * 0.56,
              left: padding * 1.3,
              child: Text('Devansh Dhopte',
                style: GoogleFonts.sourceCodePro(
                    fontSize: fontSize * 1.4,
                    color: Colors.white54,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Positioned(
              top: height * 0.425,
              left: padding * 13,
              child: Image(
                image: AssetImage('assets/Visa.png'),
                height: height * 0.3,
                width: width * 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
