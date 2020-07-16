import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/backend/models/photo.dart';

import 'image_slider.dart';
import 'post_lower_bar.dart';
import 'post_upper_barr.dart';

class PostContainer extends StatefulWidget {
  const PostContainer({
    Key key,
  }) : super(key: key);

  @override
  _PostContainerState createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  List<Photo> _photosList = [
    Photo(
        null,
        "https://media.ed.edmunds-media.com/toyota/tacoma/2020/oem/2020_toyota_tacoma_crew-cab-pickup_trd-off-road_fq_oem_4_1600.jpg",
        1600,
        1067),
    Photo(
        null,
        "https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/wp-content/uploads/2016/11/2017-Toyota-Tacoma-TRD-Pro-4x4.jpg",
        2250,
        1375),
    Photo(
      null,
      "data:image/jpeg;base64,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",
      500,
      625,
    ),
    Photo(
      null,
      "https://www.pandasecurity.com/mediacenter/src/uploads/2013/11/pandasecurity-facebook-photo-privacy.jpg",
      1280,
      960,
    ),
    Photo(
      null,
      "https://ipt.imgix.net/201444/x/0/how-and-why-you-should-shoot-vertical-landscape-photos-3.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-2.3.0&w=883",
      883,
      1321,
    ),
    Photo(
        null,
        "https://iso.500px.com/wp-content/uploads/2016/02/stock-photo-114337435.jpg",
        1600,
        1066),
  ];

  int _currentPage = 0;

  List<Photo> get _randomList {
    var r = RandomGenerator();
    var size = r.integer(3, min: 1);
    List<int> indexes = r.numbers(5, size);
    List<Photo> temp = [];
    for (int i = 0; i < size; i++) {
      temp.add(_photosList[indexes[i]]);
    }
    return temp;
  }

  void _onPageChanged(int currentPage) {
    setState(() {
      _currentPage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PostUpperBar(),
          ImageSlider(
            photosList: _randomList,
            onPageChanged: _onPageChanged,
          ),
          PostLowerBar(
            currentImageIndex: _currentPage,
            numberOfImages: _randomList.length,
          ),
        ],
      ),
    );
  }
}
