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
                imageUrl: widget.story.photoUrl,
                name: widget.story.name,
              ),
              Gap.h4,
              GestureDetector(
                onTap: () {
                  context.push('/stories/${widget.story.id}');
                },
                child: StoryImage(
                  imageUrl: widget.story.photoUrl,
                ),
              ),
              Gap.h4,
              const StoryReactButton(),
              Gap.h4,
              StoryDescription(
                name: widget.story.name,
                description: widget.story.description,
                date: widget.story.createdAt,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _storyDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Size.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${Random().nextInt(100)} reply • ${Random().nextInt(10000)} likes',
                style: Style.text2
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('MMMM dd, yyyy')
                    .format(widget.story.createdAt!)
                    .toString(),
                style: Style.text2.copyWith(color: Colors.black87),
              ),
            ],
          ),
          Gap.h4,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.h4,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.story.name,
                      style: Style.text1.copyWith(color: Colors.black),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: widget.story.description,
                      style: Style.text1.copyWith(color: Colors.black),
                    )
                  ],
                ),
                maxLines: isReadMore ? 10 : 1,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  child: Text(
                    isReadMore ? "Read less" : "Read more",
                    style: Style.subText1.copyWith(color: Colors.black),
                  ),
                  onTap: () {
                    setState(() {
                      isReadMore = !isReadMore;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
