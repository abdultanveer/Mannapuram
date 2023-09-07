import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: FavoriteWidget(),
  ),
));


class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }

    });
  }

    @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: _toggleFavorite,
      icon: (_isFavorited
          ? const Icon(Icons.star)
          : const Icon(Icons.star_border))),
       Text('$_favoriteCount'),
      ],
    );
  }
}
