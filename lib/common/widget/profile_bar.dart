part of 'widgets.dart';

class ProfileBar extends StatefulWidget {
  const ProfileBar(
      {super.key,
      required this.imageUrl,
      required this.name,
      this.lat,
      this.lon,
      required this.withLocation});

  final String imageUrl;
  final String name;
  final num? lat;
  final num? lon;
  final bool withLocation;

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  String location = '';

  @override
  void initState() {
    if (widget.withLocation) {
      getLocation(widget.lat!.toDouble(), widget.lon!.toDouble());
    }
    super.initState();
  }

  void getLocation(double lat, double lon) async {
    final info = await geo.placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = info[0];
    setState(
      () {
        if (place.administrativeArea == null) {
          location = place.country!;
        } else {
          location = '${place.administrativeArea}, ${place.country}';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(Size.p48),
          ),
          child: Image.network(
            widget.imageUrl,
            fit: BoxFit.cover,
            width: Size.p40,
            height: Size.p40,
            errorBuilder: (context, error, stackTrace) => const Center(
                child: Text(
              "Image could't be loaded",
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Gap.w8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: Style.text2.copyWith(fontWeight: FontWeight.bold),
            ),
            if (widget.withLocation)
              GestureDetector(
                onTap: () =>
                    context.push('/map?lat=${widget.lat}&lon=${widget.lon}'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: Style.text2.copyWith(color: Colors.black54),
                    ),
                    Text(
                      '(${widget.lat}, ${widget.lon})',
                      style: Style.text2.copyWith(
                          color: Colors.black54,
                          fontSize: 8,
                          fontStyle: FontStyle.italic,),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
