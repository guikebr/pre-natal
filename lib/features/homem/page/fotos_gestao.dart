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

  CacheStorage get cacheStorage => CacheStorage();

  @override
  void initState() {
    super.initState();
    readyImages();
  }

  void readyImages() {
    photos.clear();
    for (int i = 0; i < numeroImagens; i++) {
      final Either<Failure, String> foundImage = cacheStorage.read(key: '$i');
      if (foundImage.isRight) {
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
            }
            Navigator.pop(context);
            setState(() {});
          },
        ),
      ),
    );
  }

  void openImage(String name, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ImagePage(
          image: photos[name],
          name: name,
          cacheStorage: cacheStorage,
        ),
      ),
    ).then((result) {
      if (result != null) {
        readyImages();
        setState(() {});
      }
    });
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
                      return Builder(
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: ButtonHome(
                              title: '$indexº MÊS',
                              page: const SizedBox.shrink(),
                              type: photos['$index'] == null
                                  ? TypeHeader.disabled
                                  : TypeHeader.man,
                              onTap: photos['$index'] == null
                                  ? () => openCamera('$index')
                                  : () => openImage(index.toString(), context),
                            ),
                          );
                        },
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
  const ImagePage({
    required this.image,
    required this.name,
    required this.cacheStorage,
    Key? key,
  }) : super(key: key);

  final File? image;
  final String name;
  final CacheStorage cacheStorage;

  Future<void> removerImage(BuildContext context) async {
    await cacheStorage.remove(key: name);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

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
                      GestureDetector(
                        onTap: () async => await removerImage(context),
                        child: Material(
                          elevation: 4,
                          color: getBackground(TypeHeader.man),
                          borderRadius: BorderRadius.circular(width * .8),
                          child: Container(
                            width: width * .25,
                            height: height * .04,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: getBackground(TypeHeader.man),
                              border: Border.all(
                                color: getBackground(TypeHeader.man),
                              ),
                              borderRadius: BorderRadius.circular(width * .8),
                            ),
                            child: const Text(
                              'REMOVER',
                              style: TextStyle(
                                fontFamily: 'Adobe Hebrew',
                                fontSize: 12,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
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
