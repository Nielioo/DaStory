part of 'widgets.dart';

class StoryCard extends StatefulWidget {
  const StoryCard({super.key, required this.story});
  final ListStory story;

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: Size.p4, horizontal: Size.p8),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(Size.p8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileBar(
                imageUrl: widget.story.photoUrl ?? '',
                name: widget.story.name ?? '',
                lat: 0,
                lon: 0,
              ),
              Gap.h8,
              GestureDetector(
                onTap: () {
                  context.push('/stories/${widget.story.id}');
                },
                child: StoryImage(
                  imageUrl: widget.story.photoUrl!,
                ),
              ),
              Gap.h4,
              const StoryReactButton(),
              Gap.h4,
              StoryDescription(
                name: widget.story.name!,
                description: widget.story.description!,
                date: widget.story.createdAt!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
