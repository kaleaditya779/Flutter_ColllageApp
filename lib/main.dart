import 'package:flutter/material.dart';
import 'Student/HomePageStu.dart';
import 'Warden/HomePageWar.dart';

void main() => runApp( const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner : false,

        theme: ThemeData(
            brightness: Brightness.light, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(secondary: Colors.red)),
        home: const AskWhoPage()
    );
  }
}


class AskWhoPage extends StatelessWidget {
  const AskWhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: Center(
        child:
        Column(
          children: [
              Container(

                width: 150,
                padding: const EdgeInsets.all(10),
                color: Colors.blue,
                child: Image.asset("Z:/Flutt_projects/khadki_attempt/collage_app2_attempt1/assets/appimages/collageLogo.png"),
            ),


            Container(
                  width: 300,

                  //color: Colors.green,
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(50),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text("Login as: ",
                        style: TextStyle(fontSize: 27),),

                      const Text("  "),

                    ElevatedButton(
                      child: const Text('Student'),
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPageStu(title: "Student Login Page",)
                    )
                    ),
                  ),


                    ElevatedButton(
                      child: const Text('Warden'),
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPageWar(title: "Warden Login Page",)
                    )
                    ),
                  ),

                      ElevatedButton(
                        child: const Text('Faculty'),
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPageFac(title: "Faculty Login Page",)
                        )
                        ),
                      ),

                      ElevatedButton(
                        child: const Text('Security'),
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPageFac(title: "Faculty Login Page",)
                        )
                        ),
                      ),

                      const Text("  "),

                      const Text(" "),

                      ButtonBar(
                        children: [
                          const Text("Don't have account!!",
                            style: TextStyle(fontSize: 15),),

                          TextButton(
                              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPageFac(title: "Faculty Login Page",),
                              )),

                              child: const Text("Create account.",
                               style: TextStyle(fontSize: 19, color: Colors.blue, decoration: TextDecoration.underline),  )
                          )
                        ],
                      )
                ],
              ),

            ),

          ],
        ),
      )




    );
  }
}  // AskWhoPage class


class LoginPageStu extends StatefulWidget {
  final String title;

  const LoginPageStu( {super.key, required this.title});
  @override
  State<LoginPageStu> createState() => _LoginPageStuState();
}

class _LoginPageStuState extends State<LoginPageStu> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Navigate the user to the Home page
                        if (emailController.text == "student@gmail.com" && passwordController.text == "student") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageStu(
                                  email: emailController.text,
                                )
                            ),
                          );
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Successfully login"),
                              content: const Text("Welcome Dear Student"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("okay"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Invalid Credentials')),
                          );
                        }
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill input')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class LoginPageWar extends StatefulWidget {
  final String title;

  const LoginPageWar( {super.key, required this.title});
  @override
  State<LoginPageWar> createState() => _LoginPageWarState();
}

class _LoginPageWarState extends State<LoginPageWar> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Navigate the user to the Home page
                        if (emailController.text == "warden@gmail.com" && passwordController.text == "warden") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageWar(
                                  email: emailController.text,
                                )
                            ),
                          );
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Successfully login"),
                              content: const Text("Welcome Mr. Warden"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("okay"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Invalid Credentials')),
                          );
                        }
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill input')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class LoginPageFac extends StatefulWidget {
  final String title;

  const LoginPageFac( {super.key, required this.title});
  @override
  State<LoginPageFac> createState() => _LoginPageFacState();
}

class _LoginPageFacState extends State<LoginPageFac> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Navigate the user to the Home page
                        if (emailController.text == "faculty@gmail.com" && passwordController.text == "faculty") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                  email: emailController.text,
                                )
                            ),
                          );
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Successfully login"),
                              content: const Text("Welcome Faculty"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("okay"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Invalid Credentials')),
                          );
                        }
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill input')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage Sample"),
      ),
      body: Column(
        children: const [
          Text("Sample 1"),
          Text("Sample 2"),
          Text("Sample 3"),
          Text("Sample 4"),
          Text("Sample 5"),
        ],
      ),
    );
  }
}