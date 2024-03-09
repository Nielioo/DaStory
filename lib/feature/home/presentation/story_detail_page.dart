part of 'pages.dart';

class StoryDetailPage extends StatefulWidget {
  const StoryDetailPage({super.key, required this.storyId});

  final String storyId;

  @override
  State<StoryDetailPage> createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {
  String location = '';

  @override
  void initState() {
    BlocProvider.of<StoryDetailBloc>(context)
        .add(StoryDetailEvent.add(widget.storyId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Story Detail',
          style: Style.headline2,
        ),
        actions: [
          IconButton(onPressed: () async {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: BlocBuilder<StoryDetailBloc, StoryDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(
                color: violet950,
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: violet950,
              ),
            ),
            failed: (value) {
              return Center(
                child: Text('FAILED: $value'),
              );
            },
            success: (responseModel) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Size.p12, horizontal: Size.p16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileBar(
                        imageUrl: responseModel.story?.photoUrl ?? '',
                        name: responseModel.story?.name ?? '',
                        lat: responseModel.story?.lat ?? 0,
                        lon: responseModel.story?.lon ?? 0,
                      ),
                      Gap.h4,
                      StoryImage(
                        imageUrl: responseModel.story?.photoUrl ?? '',
                      ),
                      Gap.h4,
                      const StoryReactButton(),
                      Gap.h4,
                      StoryDescription(
                        name: responseModel.story?.name ?? '',
                        description: responseModel.story?.description ?? '',
                        date: responseModel.story!.createdAt!,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
