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
    super.initState();
    descriptionController = TextEditingController();
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
              title: Text(AppLocalizations.of(context)!.cameraText),
              onTap: () {
                _onCameraView(context);
                context.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(AppLocalizations.of(context)!.galeryText),
              onTap: () {
                _onGalleryView(context);
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  _onUpload(BuildContext context, XFile imageFile, String description) {
    BlocProvider.of<PickImageStoryBloc>(context).add(
      PickImageStoryEvent.uploadImage(
        imageFile: imageFile,
        description: description,
        lat: 0,
        lon: 0,
      ),
    );
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
    BlocProvider.of<PickImageStoryBloc>(context)
        .add(const PickImageStoryEvent.pickImageGalery());
  }

  _onCameraView(BuildContext context) async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;
    BlocProvider.of<PickImageStoryBloc>(context)
        .add(const PickImageStoryEvent.pickImagePhoto());
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
                  child: BlocBuilder<PickImageStoryBloc, PickImageStoryState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: () => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add_photo_alternate,
                              size: Size.p96,
                            ),
                            Text(AppLocalizations.of(context)!.chooseImageText),
                          ],
                        ),
                        success: (imgPath, imgFile) {
                          imageFile = imgFile;
                          return _showImage(imgPath);
                        },
                        failed: (message) {
                          return const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.broken_image_rounded,
                                size: Size.p96,
                              ),
                              Text("Failed to load Image."),
                            ],
                          );
                        },
                        postSuccess: (responseModel) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add_photo_alternate,
                                size: Size.p96,
                              ),
                              Text(AppLocalizations.of(context)!
                                  .chooseImageText),
                            ],
                          );
                        },
                        orElse: () => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add_photo_alternate,
                              size: Size.p96,
                            ),
                            Text(AppLocalizations.of(context)!.chooseImageText),
                          ],
                        ),
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
                    decoration: InputDecoration(
                      hintText:
                          AppLocalizations.of(context)!.inputDescriptionText,
                      border: const OutlineInputBorder(),
                    ),
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
                        FocusManager.instance.primaryFocus?.unfocus();
                        _onUpload(
                            context, imageFile!, descriptionController.text);
                      }
                    }
                  },
                  child: BlocConsumer<PickImageStoryBloc, PickImageStoryState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        postFailed: (message) =>
                            ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            duration: const Duration(seconds: 3),
                            backgroundColor: Colors.red,
                          ),
                        ),
                        postSuccess: (responseModel) {
                          descriptionController.clear();
                          BlocProvider.of<StoriesBloc>(context)
                              .add(const StoriesEvent.first());
                          context.go('/stories');
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        postLoading: () => const CircularProgressIndicator(),
                        orElse: () => const Text(
                          'Upload',
                          style: TextStyle(
                            color: Colors.black,
                          ),
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
