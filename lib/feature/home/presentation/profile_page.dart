part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Manage Profile',
          style: Style.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await AuthLocal().removeAuthData();
              // ignore: use_build_context_synchronously
              context.goNamed('login');
            },
            icon: const Icon(Icons.logout),
            color: Colors.red,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Size.p12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                onTap: () {
                  showModalLanguangeMenu(context);
                },
                title: Text(AppLocalizations.of(context)!.languageText),
                leading: const Icon(Icons.translate),
                trailing: const Icon(Icons.chevron_right),
              )
            ],
          ),
        ),
      ),
    );
  }
}

showModalLanguangeMenu(BuildContext context) {
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
            leading: const Icon(
              Icons.flag,
              color: Colors.red,
            ),
            title: const Text('Indonesia'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bahasa telah berhasil diubah'),
                ),
              );
              BlocProvider.of<LanguageBloc>(context).add(
                const ChangeLanguageEvent(selectedLanguage: Language.indonesia),
              );
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.flag,
              color: Colors.blue,
            ),
            title: const Text('English'),
            onTap: () {
              BlocProvider.of<LanguageBloc>(context).add(
                const ChangeLanguageEvent(selectedLanguage: Language.english),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Language has been changed successfully'),
                ),
              );
              context.pop();
            },
          ),
        ],
      );
    },
  );
}
