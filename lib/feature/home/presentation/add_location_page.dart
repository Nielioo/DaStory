part of 'pages.dart';

class AddLocationPage extends StatefulWidget {
  const AddLocationPage({super.key});

  @override
  State<AddLocationPage> createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
  final defaultPosition = const LatLng(-7.28902432923349, 112.6757018382688);
  final Set<Marker> markers = {};
  late GoogleMapController mapController;
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;
  LatLng? selectedLocation;

  @override
  void initState() {
    defineMarker(defaultPosition.latitude, defaultPosition.longitude);
    super.initState();
  }

  void onMyLocation() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    locationData = await location.getLocation();
    final latLng = LatLng(locationData.latitude!, locationData.longitude!);

    defineMarker(locationData.latitude!, locationData.longitude!);
    selectedLocation = latLng;
    mapController.animateCamera(CameraUpdate.newLatLng(latLng));
  }

  void defineMarker(double lat, double lon) async {
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

    setState(() {
      markers.clear();
      placemark = place;
      markers.add(marker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: Style.headline1,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                    markers: markers,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapToolbarEnabled: false,
                    mapType: selectedMapType,
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: defaultPosition,
                      zoom: 18,
                    ),
                    onMapCreated: (controller) {
                      setState(() {
                        mapController = controller;
                      });
                    },
                    onLongPress: (LatLng latLng) {
                      defineMarker(latLng.latitude, latLng.longitude);
                      selectedLocation = latLng;
                      mapController
                          .animateCamera(CameraUpdate.newLatLng(latLng));
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
                          child: const Icon(Icons.remove, color: Colors.black),
                          onPressed: () {
                            mapController.animateCamera(CameraUpdate.zoomOut());
                          },
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: Size.p16,
                    right: Size.p16,
                    child: FloatingActionButton.small(
                      backgroundColor: amber400,
                      onPressed: () {
                        onMyLocation();
                      },
                      child: const Icon(
                        Icons.my_location_rounded,
                        color: Colors.black,
                      ),
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
                        offset: const Offset(Size.p64, 0),
                        icon: const Icon(Icons.layers),
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
                        ],
                      ),
                    ),
                  ),
                  if (placemark != null)
                    Positioned(
                      bottom: Size.p16,
                      right: Size.p16,
                      left: Size.p16,
                      child: PlacemarkWidget(placemark: placemark!),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Size.p4, horizontal: Size.p16),
              child: ElevatedButton(
                onPressed: (selectedLocation != null)
                    ? () {
                        var address =
                            '${placemark?.subLocality}, ${placemark?.locality}, ${placemark?.postalCode}, ${placemark?.country}';
                        context.pop([
                          selectedLocation,
                          address,
                        ]);
                      }
                    : null,
                child: Text(
                  AppLocalizations.of(context)!.locationText,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
