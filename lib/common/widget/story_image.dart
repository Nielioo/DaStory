part of 'widgets.dart';

class StoryImage extends StatelessWidget {
  const StoryImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Size.screenWidth(context),
      height: Size.screenWidth(context) * 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Size.p12),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Center(
              child: Text(
            "Image could't be loaded",
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }
}
