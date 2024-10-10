import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget',
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: padding * 1.0),
        child: Column(
          children: [
            Text('❤', style: TextStyle(fontSize: fontsize * 1.5),),
            Padding(
              padding: EdgeInsets.only(
                bottom: padding * 3.5
              ),
            ),
            Column(
              children: [
                CachedNetworkImage(imageUrl: 'data:image/jpeg;base64,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',
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                  errorWidget: (context, url, error) => const Icon(Icons.error),),
                SizedBox(height: padding * 13.0,),
                Center(
                  child: Container(
                    width: width * 0.6,
                    height: height * 0.28,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: padding, color: Colors.black, spreadRadius: padding * 0.5)
                      ],
                      borderRadius: BorderRadius.circular(padding),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/200?grayscale',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
