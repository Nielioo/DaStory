part of 'widgets.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key, required this.imageUrl, required this.name});

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(Size.p48),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: Size.p32,
            height: Size.p32,
            errorBuilder: (context, error, stackTrace) => const Center(
                child: Text(
              "Image could't be loaded",
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Gap.w8,
        Text(
          name,
          style: Style.text2.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
