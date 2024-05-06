import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramPostTemplate extends StatelessWidget {
  ImageProvider image;
  String child;
  InstagramPostTemplate({super.key, required this.image, required this.child});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Header Section
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 10.0,
                backgroundImage: image,
              ),
              SizedBox(width: 16.0),
              Text(
                child,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Divider(
          thickness: 0.1,
          color: Colors.grey,
        ),
        // Image Section
        Expanded(
          child: Image(image: image, height: 400, fit: BoxFit.cover),
        ),
        // Like & Comment Section
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(180 * 3.141592653589793 / 180),
                child: FaIcon(
                  FontAwesomeIcons.comment,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              FaIcon(FontAwesomeIcons.paperPlane),
              Expanded(
                child:
                    Container(), // Added Expanded widget to push the next icon to the right edge
              ),
              Icon(FontAwesomeIcons.bookmark),
            ],
          ),
        ),
        // Caption Section
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Caption:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Your caption here...',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
