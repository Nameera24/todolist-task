import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}
TextEditingController title = TextEditingController();
TextEditingController description = TextEditingController();
class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 23, 47, 184), 
        title: Text("Add Task",style: TextStyle(color: Colors.white),),
  leading: IconButton(onPressed: (){Navigator.pop(context);
  }, icon: Icon(Icons.arrow_back,color: Colors.white)),
      ),
      body: SafeArea(child: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
               
                controller: title,
                    decoration: InputDecoration(
              hintText: 'Enter Titile',
        
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
              ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   TextField(
                maxLines: 4,
                    controller: description,
                    decoration: InputDecoration(
              hintText: ' Enter Description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
              ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   ElevatedButton(
                                                   onPressed: () {
                                                   
                                                   },
                                                    style: ButtonStyle(
                                                                    backgroundColor: MaterialStateProperty.all<Color>(   Color.fromARGB(255, 205, 212, 255)),
                                                                
                                                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                         RoundedRectangleBorder(
                                                           borderRadius: BorderRadius.circular(20),
                                                         ),
                                                       ),
                                                                  ),
                                                   child: Text('Add Task',style: TextStyle( fontSize: 20,fontWeight: FontWeight.w500,  color:  Color.fromARGB(255, 23, 47, 184)),),
                                                   
                                                                    //  
          )],
          ),
        ),
      )),
    
    );
  }
}