import 'dart:ui';

class DoubleShade{
  final Color lightShade;
  final Color darkShade;

  DoubleShade(this.lightShade, this.darkShade);
}

const Color backgroundColor = Color(0xFFFFFFFF);
const Color greenColor = Color(0xFF5CE27F);
const Color blueColor = Color(0xFF2196F3);
const Color yellowColor = Color(0xFFFFE12D);
const Color redColor = Color(0xFFE25C5C);
DoubleShade greenGradient = DoubleShade(const Color(0xFF5CE27F), const Color(0xFF5CABE2));
DoubleShade blackColor = DoubleShade(const Color(0xFF313131), const Color(0xFF121212));
DoubleShade grayColor = DoubleShade(const Color(0xFFB1B1B1), const Color(0xFFEFEFEF));