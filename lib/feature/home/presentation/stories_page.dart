part of 'pages.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  void initState() {
    BlocProvider.of<StoriesBloc>(context).add(GetStoriesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Size.p16),
      child: BlocConsumer<StoriesBloc, StoriesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is StoriesLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: violet950,
              ),
            );
          }

          if (state is StoriesSuccess) {
            final stories = state.responseModel.listStory;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (stories.isNotEmpty)
                    ...stories
                        .map(
                          (story) => StoryCard(story: story),
                        )
                        .toList()
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}