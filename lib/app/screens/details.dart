import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../components/ImageHero.dart';
import '../controllers/CharacterControllers.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.image,  required this.name});

  final String image;
  final String name;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.name),
      ),
        body: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                        child: ImageHero(widget.image, 100.0),
                      )


                    ],
                  ),
                );


  }
}