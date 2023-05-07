import 'package:flutter/material.dart';
import 'WardenTabs/LeaveFormRequests.dart';
import 'WardenTabs/StudentsOnLeave.dart';

class HomePageWar extends StatefulWidget {
  const HomePageWar({super.key, required this.email});
  final String email;

  @override
  State<HomePageWar> createState() => _HomePageWarScreen();
}

class _HomePageWarScreen extends State<HomePageWar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Warden Home"),
      ),
      body:
      Container(
        margin: const EdgeInsets.all(20),
        //color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LeaveFormRequests(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.list_alt_outlined, size: 40,),
                              Text(" "),
                              Text("Leave Form Requests", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StudentsOnLeave(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.people_outline, size: 50,),
                              Text(" "),
                              Text("Students on leave", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LeaveFormRequests(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.report_problem_outlined, size: 50,),
                              Text(" "),
                              Text("Student's Complaint", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StudentsOnLeave(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.cleaning_services, size: 40,),
                              Text(" "),
                              Text("Room Service history", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LeaveFormRequests(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.list_alt_outlined, size: 40,),
                              Text(" "),
                              Text("Hostel Rooms Availability", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded (
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StudentsOnLeave(),
                        ),),
                        child: Ink(
                          padding: const EdgeInsets.all(10),
                          // width: 300,
                          // height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.monetization_on_outlined, size: 50,),
                              Text(" "),
                              Text("Hostel Fee dues", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


