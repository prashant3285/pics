import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> image;

  ImageList(this.image);

  Widget build(context) {
    return ListView.builder(
      itemCount: image.length,
      itemBuilder: (context, int index) {
        return buildImage(image[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
