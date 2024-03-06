part of 'pages.dart';

class StoryDetailPage extends StatefulWidget {
  const StoryDetailPage({super.key, required this.storyId});

  final String storyId;

  @override
  State<StoryDetailPage> createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {
  @override
  void initState() {
    BlocProvider.of<StoryDetailBloc>(context)
        .add(GetDetailStoryEvent(storyId: widget.storyId));
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
          if (state is StoryDetailFailed) {
            return Center(
              child: Text('FAILED: ${state.message}'),
            );
          }
          if (state is StoryDetailLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: violet950,
              ),
            );
          }
          if (state is StoryDetailSuccess) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Size.p8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileBar(
                      imageUrl: state.responseModel.story?.photoUrl ?? '',
                      name: state.responseModel.story?.name ?? '',
                    ),
                    Gap.h4,
                    StoryImage(
                      imageUrl: state.responseModel.story?.photoUrl ?? '',
                    ),
                    Gap.h4,
                    const StoryReactButton(),
                    Gap.h4,
                    StoryDescription(
                      name: state.responseModel.story?.name ?? '',
                      description: state.responseModel.story?.description ?? '',
                      date: state.responseModel.story!.createdAt!,
                    ),
                  ],
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
