part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  State<HomePage> createState() => _HomePageState();
}

showModalUploadMenu(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    backgroundColor: amber50,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Photo'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Folder'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

class _HomePageState extends State<HomePage> {
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
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: amber400,
        selectedItemColor: violet700,
        unselectedItemColor: violet950,
        currentIndex: widget.child.currentIndex,
        onTap: (index) {
          if (index == 1) {
            Container(
              child: showModalUploadMenu(context),
            );
          } else {
            widget.child.goBranch(
              index,
              initialLocation: index == widget.child.currentIndex,
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
