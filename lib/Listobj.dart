import 'package:flutter/material.dart';
class ListObj extends StatelessWidget {
  const ListObj({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children:   const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image(image: AssetImage('lib/images/img_3.png',
                    ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Text('Thanh Pham',style: TextStyle(fontSize: 20),),
              SizedBox(width: 140,),
              Text('1 hour ago')
            ],
          ),
          Container(
            width: double.infinity,
            child: const Image(
              height: 230,
              image: AssetImage('lib/images/img_1.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.only(left: 20,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Icon(Icons.add_circle_outline_sharp,
                  color: Colors.deepPurple,
                ),
                Row(
                  children: const [
                    Text('20'),SizedBox(width: 10,),
                    Icon(Icons.comment,color: Colors.deepPurple,),
                    SizedBox(width: 10,),
                    Text('125'),
                    SizedBox(width: 10,),
                    Icon(Icons.monitor_heart,color: Colors.deepPurple,)
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

