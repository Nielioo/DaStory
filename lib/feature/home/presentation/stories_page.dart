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

  _onRefresh(BuildContext context) async {
    BlocProvider.of<StoriesBloc>(context).add(const StoriesEvent.first());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          FlavorConfig.instance.values.appName,
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
              success: (listStory, isLastPage) {
                final stories = listStory;
                return ListView.builder(
                  controller: scrollController,
                  itemCount:
                      (isLastPage!) ? stories!.length : stories!.length + 1,
                  itemBuilder: (context, index) {
                    return (index >= stories.length)
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(Size.p12),
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : StoryCard(story: stories[index]);
                  },
                );
              },
              failed: (String message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(message),
                    ElevatedButton(
                        onPressed: () {
                          _onRefresh(context);
                        },
                        child: const Text('Refresh'))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
