part of 'pages.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    BlocProvider.of<StoriesBloc>(context).add(const StoriesEvent.first());
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        BlocProvider.of<StoriesBloc>(context).add(const StoriesEvent.add());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
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
      body: RefreshIndicator(
        onRefresh: () async => BlocProvider.of<StoriesBloc>(context)
            .add(const StoriesEvent.first()),
        child: BlocBuilder<StoriesBloc, StoriesState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: violet950,
                ),
              ),
              initial: () => const Center(
                child: CircularProgressIndicator(
                  color: violet950,
                ),
              ),
              success: (listStory) {
                final stories = listStory;
                return ListView.builder(
                  controller: scrollController,
                  itemCount: stories!.length + 1,
                  itemBuilder: (context, index) {
                    if (index == stories.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(Size.p12),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return StoryCard(story: stories[index]);
                  },
                );
              },
              failed: (String message) => Center(
                child: Text(message),
              ),
            );
          },
        ),
      ),
    );
  }
}
