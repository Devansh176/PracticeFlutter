import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  List<XFile>? files;
  ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height =  screenSize.height;
    final padding = width * 0.05;
    final fontsize = width * 0.05;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Image Picker',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontsize * 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height * 0.45,
              width: width * 0.9,
              color: Colors.grey,
              child: Center(
                child: file == null? Text('Image not picked',
                  style: TextStyle(
                    fontSize: fontsize * 0.7,
                  ),
                ): Image.file(File(file!.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03,),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image Picked');
                print(photo!.path);
              },
              child: Text('Pick Image',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: fontsize,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                side:WidgetStateProperty.all(const BorderSide(color: Colors.amber)),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Images Picked');
                for(int i=0; i<files!.length; i++){
                  print(files![i].path);
                }
              },
              child: Text('Pick Images',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: fontsize,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                side:WidgetStateProperty.all(const BorderSide(color: Colors.amber)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
