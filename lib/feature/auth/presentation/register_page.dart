part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isObsecured = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  onRegister() {
    final requestModel = RegisterRequestModel(
      name: _nameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );

    BlocProvider.of<AuthBloc>(context)
        .add(RegisterAuthEvent(requestModel: requestModel));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is RegisterFailed) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }

          if (state is RegisterSuccess) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.responseModel.message!),
                backgroundColor: Colors.green,
              ),
            );
            context.goNamed('login');
          }

          if (state is RegisterLoading) {
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
          }
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
                  "Story App",
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
                        controller: _nameController,
                        decoration: const InputDecoration(
                          hintText: "Name",
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      Gap.h20,
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
                          if (formKey.currentState!.validate()) {
                            onRegister();
                          }
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.pop(),
                        child: const Text(
                          'Already have account? Login here',
                          style: TextStyle(
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
