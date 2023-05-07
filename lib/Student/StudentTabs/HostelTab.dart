
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class HostelPage extends StatelessWidget {

  const HostelPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hostel"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    color: const Color(0xffaef37e),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                            child: const Text("Apply for Leave"),
                            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ApplyLeave(),
                            ),
                            )
                        )
                    )
                  )

              )
            ],
          )
        ],
      )
    );
  }
}

// Leave date, leave time, expected in date, expected in time, person to be visited, his mob number, his address, relationship
class ApplyLeave extends StatefulWidget {

  const ApplyLeave({super.key});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {

    late DateTime _nowDate;
    String convertedDateLeave = " ";
    String convertedDateIn = " ";

    TimeOfDay _nowTime = TimeOfDay.now();
    String convertedTimeLeave = " ";
    String convertedTimeIn = " ";

    String personVisited = " ";
    String reason = " ";
    String address = " ";
    int mobNum = 0;

    final myControllerName = TextEditingController();
    final myControllerReason = TextEditingController();
    final myControllerNumber = TextEditingController();
    final myControllerAddress = TextEditingController();

    void _showDatePickerLeave() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),
      ).then((value) {
        setState(() {
          _nowDate = value!;
        });
        convertedDateLeave = "${_nowDate.day.toString()}-${_nowDate.month.toString().padLeft(2,'0')}-${_nowDate.year.toString().padLeft(2,'0')}";
      });
    }

    void _showTimePickerLeave() {
      showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
      ).then((value) {
        setState(() {
          _nowTime = value!;
        });
        convertedTimeLeave = "${_nowTime.hour.toString().padLeft(2,'0')}-${_nowTime.minute.toString().padLeft(2,'0')}";
      });
    }

    void _showDatePickerIn() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),

      ).then((value) {
        setState(() {
          _nowDate = value!;
        });
        convertedDateIn = "${_nowDate.day.toString()}-${_nowDate.month.toString().padLeft(2,'0')}-${_nowDate.year.toString().padLeft(2,'0')}";
      });
    }

    void _showTimePickerIn() {
      showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      ).then((value) {
        setState(() {
          _nowTime = value!;
        });
        convertedTimeIn = "${_nowTime.hour.toString().padLeft(2,'0')}-${_nowTime.minute.toString().padLeft(2,'0')}";
      });
    }



    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Leave Form"),
        ),
        body:
          Container(
            //color: const Color(0xffa5e1b1),
            child: Column(
              children: [
                Expanded(
                  flex: 1,


                    child: Row(
                      children: [
                        const Text('Leave Date: ', style: TextStyle(fontSize: 19),),
                        ElevatedButton(
                            onPressed: _showDatePickerLeave,
                            child: const Text(
                              "Select Date", style: TextStyle(fontSize: 15),)
                        ),
                        const Text("      "),
                        Text(convertedDateLeave, style: const TextStyle(fontSize: 20),),
                      ],
                    ),
                ),

               // const Divider(color: Colors.black,),
                Expanded(
                  flex: 1,

                    child: Row(
                      children: [
                        const Text('Leave Time: ', style: TextStyle(fontSize: 19),),
                        ElevatedButton(
                            onPressed: _showTimePickerLeave,
                            child: const Text(
                              "Select Time", style: TextStyle(fontSize: 15),)
                        ),
                        const Text("      "),
                        Text(convertedTimeLeave, style: const TextStyle(fontSize: 20),),
                      ],
                    ),
                ),

                // const Divider(color: Colors.black,),
                // const Divider(color: Colors.black,),
                Expanded(
                  flex: 1,

                    child: Row(
                      children: [
                        const Text('Expected Return Date: ', style: TextStyle(fontSize: 17),),
                        ElevatedButton(
                            onPressed: _showDatePickerIn,
                            child: const Text(
                              "Select Date", style: TextStyle(fontSize: 15),)
                        ),
                        const Text(" "),
                        Text(convertedDateIn, style: const TextStyle(fontSize: 20),),
                      ],
                    ),
                ),

                //const Divider(color: Colors.black,),
                Expanded(
                  flex: 1,

                    child: Row(
                      children: [

                        const Text('Expected Return Time: ', style: TextStyle(fontSize: 17),),


                        ElevatedButton(
                            onPressed: _showTimePickerIn,
                            child: const Text("Select Time", style: TextStyle(fontSize: 15),)
                        ),


                        const Text(" "),

                        Text(convertedTimeIn, style: const TextStyle(fontSize: 20),),
                      ],
                    ),
                ),


                //const Divider(color: Colors.black,),
                //const Text(" "),
                Expanded(
                  flex: 2,

                    child: Column(
                      children: [
                        TextField(
                          maxLines: 1,
                          controller: myControllerName,
                          keyboardType: TextInputType.name,

                          decoration: const InputDecoration(
                            labelText: 'Enter the name of person to be visited',
                            alignLabelWithHint: true,

                            border: OutlineInputBorder(),
                          ),
                          onChanged: (text) => setState(() {}),
                        ),

                      ],
                    ),
                ),


                Expanded(
                  flex: 2,

                    child: Column(
                      children: [
                        TextField(
                          maxLines: 1,
                          controller: myControllerReason,
                          keyboardType: TextInputType.name,

                          decoration: const InputDecoration(
                            labelText: 'Enter Reason',
                            alignLabelWithHint: true,

                            border: OutlineInputBorder(),
                          ),
                          onChanged: (text) => setState(() {}),
                        ),

                      ],
                    ),
                ),


                Expanded(
                  flex: 2,

                    child: Column(
                      children: [
                        TextField(
                          maxLines: 1,
                          controller: myControllerNumber,
                          keyboardType: TextInputType.number,

                          decoration: const InputDecoration(
                            labelText: 'Enter person contact number',
                            alignLabelWithHint: true,

                            border: OutlineInputBorder(),
                          ),
                          onChanged: (text) => setState(() {}),
                        ),
                      ],
                    )
                ),

                Expanded(
                  flex: 3,

                    child: Column(
                      children: [
                        TextField(
                          maxLines: 2,
                          controller: myControllerAddress,
                          keyboardType: TextInputType.text,

                          decoration: const InputDecoration(
                            labelText: 'Enter Address',
                            alignLabelWithHint: true,

                            border: OutlineInputBorder(),
                          ),
                          onChanged: (text) => setState(() {}),
                        ),
                      ],
                    )
                ),

                Expanded(
                  flex: 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            side: const BorderSide(color: Colors.green, width: 5),
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                          onPressed: () =>
                          // Here the code to store all the values in respective variables, and sending to backend will happen.
                          {},

                          child: const Text("Submit the form")
                      ),
                    ),

                ),



              ],
            ),
          ),



    );
  }
}


