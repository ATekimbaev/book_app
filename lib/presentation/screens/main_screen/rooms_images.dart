import 'package:flutter/cupertino.dart';

class RoomsImages extends StatelessWidget {
  const RoomsImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg/600px-Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg',
          height: 160,
          width: 90,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg/600px-Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg',
          height: 160,
          width: 90,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg/600px-Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg',
          height: 160,
          width: 90,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg/600px-Batman_cosplay_-_Masked_Mateo_-_Photo_Jonin.jpg',
          height: 160,
          width: 90,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
