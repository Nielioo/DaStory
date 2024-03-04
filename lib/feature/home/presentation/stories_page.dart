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
        actions: [
          IconButton(
              onPressed: () async {
                await AuthLocal().removeAuthData();
                // ignore: use_build_context_synchronously
                context.goNamed('login');
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: BlocConsumer<StoriesBloc, StoriesState>(
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
