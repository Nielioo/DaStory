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
      padding: const EdgeInsets.symmetric(vertical: Size.p4),
      child: Card(
        color: amber50,
        child: Padding(
          padding: const EdgeInsets.all(Size.p8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profile(),
              Gap.h4,
              _storyImage(context),
              Gap.h4,
              _reactButton(),
              Gap.h4,
              _storyDescription(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profile() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(Size.p48),
          ),
          child: Image.network(
            widget.story.photoUrl,
            fit: BoxFit.cover,
            width: Size.p32,
            height: Size.p32,
            errorBuilder: (context, error, stackTrace) => const Center(
                child: Text(
              "Image could't be loaded",
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Gap.w8,
        Text(
          widget.story.name,
          style: Style.text2.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _storyImage(BuildContext context) {
    return SizedBox(
      width: Size.screenWidth(context),
      height: Size.screenWidth(context) * 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Size.p12),
        child: Image.network(
          widget.story.photoUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Center(
              child: Text(
            "Image could't be loaded",
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }

  Widget _reactButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.repeat),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
      ],
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
