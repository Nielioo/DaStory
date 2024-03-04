part of 'widgets.dart';

class MySnackbar extends StatelessWidget {
  const MySnackbar({
    super.key,
    required this.text,
    this.backgroundColor,
    this.elevation,
    this.margin,
    this.padding,
    this.width,
    this.shape,
    this.behavior,
    this.action,
    this.duration  = const Duration(seconds: 3),
    this.animation,
    this.onVisible,
  });

  final String? text;
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final ShapeBorder? shape;
  final SnackBarBehavior? behavior;
  final SnackBarAction? action;
  final Duration duration;
  final Animation<double>? animation;
  final VoidCallback? onVisible;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(text!),
      duration: duration,
      backgroundColor: backgroundColor,
      elevation: elevation,
      margin: margin,
      padding: padding,
      width: width,
      shape: shape,
      behavior: behavior,
      action: action,
      animation: animation,
      onVisible: onVisible,
    );
  }
}
