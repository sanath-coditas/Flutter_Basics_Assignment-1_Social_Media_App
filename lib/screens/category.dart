import 'package:flutter/material.dart';
import 'package:flutter_basics_assignment_1_social_media_app/GradientButton.dart';
import 'package:flutter_basics_assignment_1_social_media_app/screens/posts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
        ),

      body: Container(
        padding: const EdgeInsets.all(25),

        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text('Who are you?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryItem(text: 'Photographer',img: 'lib/images/img_2.png'),
                const SizedBox(width: 18,),
                categoryItem(text: 'Video Creator',
                img: 'lib/images/img_1.png'
                )],
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryItem(text: 'Illustrator',
                img: 'lib/images/img_3.png'
                ),
                const SizedBox(width: 18,),
                categoryItem(text: 'Designer',
                 img: 'lib/images/img_4.png'
                )],
            ),
            const SizedBox(
              height: 110,
            ),
            GradientButton(txt: 'EXPLORE NOW', onTapp: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostsScreen()
             )
             );
            }),


          ],
        ),
      ),
    ));
  }
}

Widget categoryItem({String text = '',String img = ' '}) {
  return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(children:  [
         Positioned(
          child: Image(
            width: 180,
            height: 230,
            image: AssetImage(img),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 25,
          left: 20,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
            fontSize: 20
            ),
          ),
        ),
      ]));
}
