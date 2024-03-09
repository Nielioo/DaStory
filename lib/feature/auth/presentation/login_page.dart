part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isObsecured = true;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  onLogin() {
    final requestModel = LoginRequestModel(
      email: _emailController.text,
      password: _passwordController.text,
    );
    BlocProvider.of<AuthBloc>(context).add(
      AuthEvent.login(requestModel),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.mapOrNull(
            loginLoading: (value) {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) {
                  return const Dialog(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Size.p32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(),
                          Gap.h12,
                          Text('Please Wait...')
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            loginSuccess: (value) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.responseModel.message!),
                  backgroundColor: Colors.green,
                ),
              );
              context.goNamed('stories');
            },
            loginFailed: (value) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.message),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap.h64,
              Padding(
                padding: const EdgeInsets.all(Size.p32),
                child: Text(
                  FlavorConfig.instance.values.appName,
                  style: Style.headline1.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Gap.h32,
              Container(
                padding: const EdgeInsets.all(Size.p32),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: "Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      Gap.h20,
                      TextFormField(
                        controller: _passwordController,
                        obscureText: isObsecured,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecured = !isObsecured;
                              });
                            },
                            icon: isObsecured
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      Gap.h32,
                      ElevatedButton(
                        onPressed: () {
                          onLogin();
                        },
                        child: Text(
                          AppLocalizations.of(context)!.loginText,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.push('/register');
                        },
                        child: Text(
                          AppLocalizations.of(context)!.registerAltText,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
