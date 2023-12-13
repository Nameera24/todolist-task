


import 'package:flutter/material.dart';

import 'package:project1/const/colors.dart';
import 'package:project1/screens/addTask.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}
bool isDone = false;
final show = true;

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColors,
       floatingActionButton: FloatingActionButton(onPressed: 
    (){
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddTask()),
            );
    
    },
    backgroundColor:Color.fromARGB(255, 23, 47, 184) ,
    child: Icon(Icons.add,size: 30,color: Colors.white,),),
      
      body: SafeArea(
        child:
  
        
        
        
      


      ListView.builder(
        itemCount: 10,
         itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3)
                ),
              ]
              
            
            ),
            height: 150,
             width: MediaQuery.of(context).size.width,
             child: Row(children: [
             Box(),
             SizedBox(width: 20,),
             Expanded(
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [SizedBox(height: 25,),
                         Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Title',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
               Checkbox(value: isDone, onChanged: (value){
                 setState(() {
                   isDone = !isDone;
                 });
               })
               ]),
              
                       Text('Subtitle',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
                       SizedBox(height: 2,
                    ),
                              Expanded(
                                child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                       children: [
                                                         ElevatedButton(
                                                          onPressed: () {
                                                          
                                                          },
                                                           style: ButtonStyle(
                                           backgroundColor: MaterialStateProperty.all<Color>(   Color.fromARGB(255, 205, 212, 255)),
                                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                         RoundedRectangleBorder(
                                                           borderRadius: BorderRadius.circular(30),
                                                         ),
                                                       ),
                                          
                                         ),
                                                          child: Text('Deadline',style: TextStyle( color:  Color.fromARGB(255, 23, 47, 184)),),
                                                          
                                           //   )
                                          ),
                                                   
                                                      
                                                        Row(
                                                          children: [
                                ElevatedButton(
                                                   onPressed: () {
                                                   
                                                   },
                                                    style: ButtonStyle(
                                                                    backgroundColor: MaterialStateProperty.all<Color>(   Color.fromARGB(255, 205, 212, 255)),
                                                                
                                                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                         RoundedRectangleBorder(
                                                           borderRadius: BorderRadius.circular(30),
                                                         ),
                                                       ),
                                                                  ),
                                                   child: Text('Edit',style: TextStyle(fontWeight: FontWeight.w500,  color:  Color.fromARGB(255, 23, 47, 184)),),
                                                   
                                                                    //   )
                                                                   )],
                                                         
                                                         
                                                        )
                                                        ],),
                              ),
                     
                 
               ],
                         ),
             ),
                     
                     
              
              
            
            
             ]),
           
          ),
              
            
             );
   } )
       
  ));}

    
  }

Widget Box(){
  return  Container(
              decoration: BoxDecoration(
               
                 gradient: LinearGradient(colors: [
               Color.fromARGB(255, 23, 47, 184), 
                    Color(0xff281537),
              ]),
             )
            ,
              height: 150,
              width: 120,
            );
}
