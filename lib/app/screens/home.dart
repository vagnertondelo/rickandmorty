import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rick_and_morty/app/screens/details.dart';

import '../components/ImageHero.dart';
import '../controllers/CharacterControllers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var controller = CharacterController.characterSpotController;

  @override
  void initState() {
    super.initState();
    controller.listCharacter();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
        body: Obx(() => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: controller.character.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(image: controller
                                      .character[index].image, name: controller
                                      .character[index].name,),)
                          );
                        },
                        leading:  ImageHero(controller
                              .character[index].image, 60.0)
                      ,
                        title: Text(controller
                            .character[index].name),
                        subtitle: Text(controller
                            .character[index].species),
                      ),

                    ],
                  ),
                );
              }),
        ))
    );
  }
}