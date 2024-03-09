part of 'pages.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key, required this.lat, required this.lon});

  final String lat;
  final String lon;

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Set<Marker> markers = {};
  late GoogleMapController mapController;
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;

  @override
  void initState() {
    getLocation(double.parse(widget.lat), double.parse(widget.lon));

    super.initState();
  }

  void getLocation(double lat, double lon) async {
    final currentPosition = LatLng(lat, lon);

    final info = await geo.placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = info[0];

    final marker = Marker(
      markerId: const MarkerId('Dicoding Id'),
      position: currentPosition,
      onTap: () => mapController.animateCamera(
        CameraUpdate.newLatLngZoom(currentPosition, 18),
      ),
    );
    placemark = place;
    markers.add(marker);
  }

  @override
  Widget build(BuildContext context) {
    final currentPosition =
        LatLng(double.parse(widget.lat).toDouble(), double.parse(widget.lon));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: Style.headline1,
        ),
      ),
      body: Center(
        child: Stack(children: [
          GoogleMap(
            markers: markers,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            mapType: selectedMapType,
            initialCameraPosition: CameraPosition(
              target: currentPosition,
              zoom: 18,
            ),
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),
          Positioned(
            bottom: Size.p144,
            right: Size.p16,
            child: Column(
              children: [
                FloatingActionButton.small(
                  heroTag: "zoom-in",
                  backgroundColor: amber400,
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    mapController.animateCamera(CameraUpdate.zoomIn());
                  },
                ),
                FloatingActionButton.small(
                  heroTag: "zoom-out",
                  backgroundColor: amber400,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    mapController.animateCamera(CameraUpdate.zoomOut());
                  },
                )
              ],
            ),
          ),
          Positioned(
            top: Size.p16,
            left: Size.p16,
            child: FloatingActionButton.small(
              backgroundColor: amber400,
              onPressed: null,
              child: PopupMenuButton<MapType>(
                  color: amber400,
                  onSelected: (value) => {
                        setState(
                          () {
                            selectedMapType = value;
                          },
                        ),
                      },
                  offset: const Offset(Size.p32, 0),
                  icon: const Icon(Icons.layers_outlined),
                  itemBuilder: (context) => <PopupMenuEntry<MapType>>[
                        const PopupMenuItem<MapType>(
                          value: MapType.normal,
                          child: Text('Normal'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.satellite,
                          child: Text('Satellite'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.terrain,
                          child: Text('Terrain'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.hybrid,
                          child: Text('Hybrid'),
                        )
                      ]),
            ),
          ),
          if (placemark != null)
            Positioned(
              bottom: Size.p16,
              right: Size.p16,
              left: Size.p16,
              child: PlacemarkWidget(placemark: placemark!),
            )
        ]),
      ),
    );
  }
}
