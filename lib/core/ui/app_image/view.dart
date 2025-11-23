import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AppImage extends StatelessWidget {
  final String image;
  final double?
  height, width;
  final Color? color;
  final BoxFit? fit;

  const AppImage({
    super.key,
    required this.image,
    required this.height,
    required this.width,
    this.color,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    if (image.toLowerCase().endsWith(".svg")) {
      return SvgPicture.asset(
        "assets/svg/$image",
        width: width,
        height: height,
        color: color,
      );
    } else if (image.toLowerCase().startsWith("http")) {
      return Image.network(
        image,
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    } else if(image.endsWith(".json")){
return Lottie.asset("assets/lotties/$image",width: width,
  height: height,
  fit: fit,);
    }


    else {
      return Image.asset(
        "assets/images/$image",
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    }
  }
}
