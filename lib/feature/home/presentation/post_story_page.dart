part of 'pages.dart';

class PostStoryPage extends StatefulWidget {
  const PostStoryPage({super.key});

  @override
  State<PostStoryPage> createState() => _PostStoryPageState();
}

class _PostStoryPageState extends State<PostStoryPage> {
  final formKey = GlobalKey<FormState>();
  XFile? imageFile;
  late TextEditingController descriptionController;
  final isWeb = kIsWeb;

  @override
  void initState() {
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  showModalUploadMenu(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: amber50,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Take a Photo'),
              onTap: () {
                _onCameraView(context);

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Galery'),
              onTap: () {
                _onGalleryView(context);

                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  _onUpload(BuildContext context, XFile imageFile, String description) {
    BlocProvider.of<PostStoryBloc>(context).add(DoPostStoryEvent(
      imageFile: imageFile,
      description: description,
      lat: 0,
      lon: 0,
    ));
  }

  Widget _showImage(String imagePath) {
    return kIsWeb
        ? Image.network(
            imagePath.toString(),
            fit: BoxFit.contain,
          )
        : Image.file(
            File(imagePath.toString()),
            fit: BoxFit.contain,
          );
  }

  _onGalleryView(BuildContext context) async {
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;
    BlocProvider.of<PostStoryBloc>(context).add(PickImageGaleryEvent());
  }

  _onCameraView(BuildContext context) async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;
    BlocProvider.of<PostStoryBloc>(context).add(PickImageCameraGaleryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Story',
          style: Style.headline1,
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(Size.p4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: GestureDetector(
                  onTap: () => showModalUploadMenu(context),
                  child: BlocBuilder<PostStoryBloc, PostStoryState>(
                    builder: (context, state) {
                      if (state is ImageGaleryFailed) {
                        return const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.broken_image_rounded,
                            size: Size.p96,
                          ),
                        );
                      }
                      if (state is ImageGalerySuccess) {
                        imageFile = state.imageFile;
                        return _showImage(state.imagePath);
                      }
                      if (state is PostStorySuccess) {
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              size: Size.p96,
                            ),
                            Text("Upload Image"),
                          ],
                        );
                      }
                      return const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            size: Size.p96,
                          ),
                          Text("Upload Image"),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(Size.p12),
                  child: TextFormField(
                    controller: descriptionController,
                    maxLines: 4,
                    decoration: const InputDecoration(
                        hintText: "Enter story description here..",
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your description.';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Size.p12),
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (imageFile != null) {
                        _onUpload(
                            context, imageFile!, descriptionController.text);
                      }
                    }
                  },
                  child: BlocBuilder<PostStoryBloc, PostStoryState>(
                    builder: (context, state) {
                      if (state is PostStoryLoading) {
                        return const CircularProgressIndicator();
                      }

                      if (state is PostStoryFailed) {
                        return Text('Error : ${state.message}');
                      }

                      if (state is PostStorySuccess) {
                        descriptionController.text = '';
                        BlocProvider.of<StoriesBloc>(context)
                            .add(GetStoriesEvent());
                        context.go('/stories');
                      }

                      return const Text(
                        'Upload',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
