part of 'widgets.dart';

class StoryDescription extends StatefulWidget {
  const StoryDescription(
      {super.key,
      required this.name,
      required this.description,
      required this.date});

  final String name;
  final String description;
  final DateTime date;

  @override
  State<StoryDescription> createState() => _StoryDescriptionState();
}

class _StoryDescriptionState extends State<StoryDescription> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
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
                '${Random().nextInt(100)} ${AppLocalizations.of(context)!.replyText} • ${Random().nextInt(10000)} ${AppLocalizations.of(context)!.likeText}',
                style: Style.text2
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('MMMM dd, yyyy').format(widget.date).toString(),
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
                      text: widget.name,
                      style: Style.text1.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: widget.description,
                      style: Style.text1.copyWith(color: Colors.black),
                    )
                  ],
                ),
                maxLines: isReadMore ? null : 1,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  child: Text(
                    isReadMore
                        ? AppLocalizations.of(context)!.readLessText
                        : AppLocalizations.of(context)!.readMoreText,
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
