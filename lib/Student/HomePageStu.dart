import 'package:flutter/material.dart';
import 'StudentTabs/HostelTab.dart';

class HomePageStu extends StatefulWidget {
  const HomePageStu({super.key, required this.email});
  final String email;

  @override
  State<HomePageStu> createState() => _HomePageStuScreen();
}

class _HomePageStuScreen extends State<HomePageStu> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  const Text("Home"),
        ),
        endDrawer: Drawer(
          child:  ListView(
            padding:  const EdgeInsets.all(0.0),
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName:  Text("Aditya Kale"),
                accountEmail:  Text("abc@gmail.com"),
                currentAccountPicture:  CircleAvatar(
                  backgroundColor: Colors.white,
                  child:  Text("Nickname"),
                ),
              ),
              const ListTile(
                title:  Text("Home"),
                trailing:  Icon(Icons.home),
              ),
              const Divider(),
              ListTile(
                title:  const Text("Profile"),
                trailing:  const Icon(Icons.person),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Fees"),
                trailing:  const Icon(Icons.monetization_on),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Learning Resources"),
                trailing:  const Icon(Icons.book),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Library"),
                trailing:  const Icon(Icons.library_books),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Hostel"),
                trailing:  const Icon(Icons.home_work),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HostelPage(),
              ),),
              ),
              const Divider(),
              ListTile(
                title:  const Text("Faculty"),
                trailing:  const Icon(Icons.people),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Info"),
                trailing:  const Icon(Icons.info),
                onTap: () => {},
              ),
              const Divider(),
              ListTile(
                title:  const Text("Close"),
                trailing:  const Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child : Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 500,
                color: const Color(0xff89e0e0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100), child: Image.asset('assets/appimages/profile.jpg')),
                    ),
                    const SizedBox(height: 10,),
                    Text("ADITYA KALE", style: Theme.of(context).textTheme.titleLarge,),
                    const SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: const Text("C21061", style: TextStyle(color: Colors.red, fontSize: 20)),
                    ),
                    const Divider(color: Color(0xff030303),),
                    const SizedBox(height: 10,),
                    Column(
                      children: const [
                        Text("Branch : ", style: TextStyle(fontSize: 19),),
                        Text("Computer Engineering", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                        Text(' '),
                        Text("Class : ", style: TextStyle(fontSize: 19),),
                        Text("SE", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                        Text(' '),
                        Text("DOB : ", style: TextStyle(fontSize: 19),),
                        Text("27/02/2003", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ),
              const Text("More features like academic calender, attendence will be added soon", style: TextStyle(fontSize: 24),),
            ],
          )

                  )

        );
  }
}












