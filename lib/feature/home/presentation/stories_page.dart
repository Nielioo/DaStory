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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Story App',
          style: Style.headline1,
        ),
      ),
      body: BlocBuilder<StoriesBloc, StoriesState>(
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
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<StoriesBloc>(context).add(GetStoriesEvent());
              },
              child: ListView.builder(
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return StoryCard(story: stories[index]);
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
