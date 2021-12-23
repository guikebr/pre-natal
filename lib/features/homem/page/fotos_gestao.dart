import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:pre_natal/core/either/src/either.dart';
import 'package:pre_natal/core/errors/failure.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/cache_storage.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';
import 'package:pre_natal/features/home/pagina/widget/button_home.dart';

class FotosGestao extends StatefulWidget {
  const FotosGestao({Key? key}) : super(key: key);

  @override
  State<FotosGestao> createState() => _FotosGestaoState();
}

class _FotosGestaoState extends State<FotosGestao> {
  final int numeroImagens = 9;
  final Map<String, File> photos = {};

  final CacheStorage cacheStorage = CacheStorage();

  @override
  void initState() {
    super.initState();
    readyImages();
  }

  void readyImages() {
    for (int i = 0; i < numeroImagens; i++) {
      final Either<Failure, String> foundImage = cacheStorage.read(key: '$i');
      print("foundImage: $foundImage");
      if (foundImage.isRight) {
        print("image: ${foundImage.right}");
        if (foundImage.right.isNotEmpty) {
          photos[i.toString()] = File(foundImage.right);
        }
      }
    }
  }

  void openCamera(String name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CameraCamera(
          onFile: (file) async {
            photos[name] = file;
            if (photos[name]?.path != null) {
              await cacheStorage.write(key: name, value: photos[name]!.path);
              print('saved');
            }
            Navigator.pop(context);
            setState(() {});
          },
        ),
      ),
    );
  }

  Future<void> openImage(String name) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ImagePage(image: photos[name], name: name),
      ),
    );

    if (result != null) {
      readyImages();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(secondary: 'Fotos'),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    numeroImagens,
                    (i) {
                      final int index = i + 1;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: ButtonHome(
                          title: '$indexº MÊS',
                          page: Container(),
                          type: photos['$index'] == null
                              ? TypeHeader.disabled
                              : TypeHeader.man,
                          onTap: photos['$index'] == null
                              ? () => openCamera('$index')
                              : () async => await openImage(i.toString()),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonCircularHome(text: 'VOLTAR'),
                ButtonCircularHome(text: 'INÍCIO', page: HomePage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  ImagePage({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;
  final File? image;

  final CacheStorage cacheStorage = CacheStorage();

  removerImage(BuildContext context) {
    cacheStorage.remove(key: name);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: image != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: double.maxFinite, child: Image.file(image!)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ButtonCircularHome(text: 'VOLTAR'),
                      ButtonCircularHome(
                        text: 'REMOVER',
                        function: removerImage(context),
                      ),
                      const ButtonCircularHome(
                        text: 'INÍCIO',
                        page: HomePage(),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
