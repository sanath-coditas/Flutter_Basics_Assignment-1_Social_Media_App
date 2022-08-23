import 'package:flutter/material.dart';
import 'package:flutter_basics_assignment_1_social_media_app/Listobj.dart';
class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
     backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 10),
              // color: Colors.deepPurple,
              child: const Text('Photographer posts',
                style: TextStyle(color: Colors.black,
                fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
            ),
             const SizedBox(height: 20,),
             Container(
               height: MediaQuery.of(context).size.height*0.7,
               child: ListView.builder(
                 itemCount: 20,
                 itemBuilder:(BuildContext context, int index){
                   return const Padding(
                     padding: EdgeInsets.all(6.0),
                     child: ListObj(),
                   );
                 }
               ),
             )

          ],
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        fixedColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],

      )
    )
    );
  }
}

