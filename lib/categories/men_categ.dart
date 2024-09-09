import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screens/subcateg_products.dart';
import 'package:multi_store_app/utilities/categ_list.dart';

// List<String> imagetry =[
//   'images/try/image0.jpg'
//   'images/try/image1.jpg'
//   'images/try/image2.jpg'
//   'images/try/image3.jpg'

// ];

// List<String> labeltry= [
//   'Shirt',
//   'Pants',
//   'Shoes',
//   'jeans',
// ];
class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      

      child: SizedBox(
        height: MediaQuery.of(context).size.height *0.8,
        width:  MediaQuery.of(context).size.width*0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Men',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.68,
              child: GridView.count(
                mainAxisSpacing: 70,
                crossAxisSpacing: 15,
                crossAxisCount: 3,
                children: List.generate(men.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubCategProducts(
                                    maincategName: 'men',
                                    subcategname: men[index],
                                  )));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image(
                            image: AssetImage('images/men/men$index.jpg'),
                          ),
                        ),
                        Text(men[index])
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
