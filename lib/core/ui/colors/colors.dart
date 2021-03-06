import 'package:flutter/painting.dart';

enum TypeHeader { women, child, man, another, disabled }

Color getTitleColor(TypeHeader type) {
  switch (type) {
    case TypeHeader.women:
      return const Color(0xffDB9E9A);
    case TypeHeader.child:
      return const Color(0xff7BBEB9);
    case TypeHeader.man:
      return const Color(0xff4842a8);
    case TypeHeader.disabled:
    case TypeHeader.another:
      return const Color(0xff000000);
  }
}

Color getBackground(TypeHeader type) {
  switch (type) {
    case TypeHeader.women:
      return const Color(0xffDB9E9A);
    case TypeHeader.child:
      return const Color(0xff7BBEB9);
    case TypeHeader.man:
      return const Color(0xff4842a8);
    case TypeHeader.another:
      return const Color(0xffffffff);
    case TypeHeader.disabled:
      return const Color(0xff716f6f);
  }
}
