part of 'pages.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  void initState() {
    BlocProvider.of<StoriesBloc>(context).add(const StoriesEvent.add());
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
      body: RefreshIndicator(
        onRefresh: () async =>
            BlocProvider.of<StoriesBloc>(context).add(const StoriesEvent.add()),
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
              success: (responseModel) {
                final stories = responseModel.listStory;
                return ListView.builder(
                  itemCount: stories?.length,
                  itemBuilder: (context, index) {
                    return StoryCard(story: stories![index]);
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
