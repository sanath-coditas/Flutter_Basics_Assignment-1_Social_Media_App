import 'package:flutter/material.dart';
import 'package:flutter_basics_assignment_1_social_media_app/GradientButton.dart';
import 'package:flutter_basics_assignment_1_social_media_app/screens/posts.dart';

class CategoryScreenNew extends StatelessWidget {
  const CategoryScreenNew({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Who are you?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height / 1.6,

                  child: GridView.count(
                    childAspectRatio: 0.86,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    children: [
                      categoryItem(
                          text: 'Photographer', img: 'lib/images/img_2.png'),
                      categoryItem(
                          text: 'Video Creator', img: 'lib/images/img_1.png'),
                      categoryItem(
                          text: 'Illustrator', img: 'lib/images/img_3.png'),
                      categoryItem(
                          text: 'Designer', img: 'lib/images/img_4.png')
                    ],
                  ),
                ),
                // const SizedBox(height: 10,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GradientButton(
                        txt: 'EXPLORE NOW',
                        onTapp: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PostsScreen()));
                        }),
                  ),
                ),
                // const SizedBox(height: 20,),
              ],
            ),
          )),
    );
  }
}

Widget categoryItem({String text = '', String img = ' '}) {
  return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(img),
        ),
      ),
      child: Stack(children: [
        Positioned(
          bottom: 25,
          left: 20,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ]));
}
