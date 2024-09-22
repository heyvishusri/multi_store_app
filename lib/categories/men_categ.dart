import 'package:flutter/material.dart';
import 'package:multi_store_app/minor_screens/subcateg_products.dart';
import 'package:multi_store_app/utilities/categ_list.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(
                    headerLabel: 'men',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(men.length, (index) {
                        return SubcategModel(
                          mainCategName: 'men',
                          subcategName: men[index],
                          assetName: 'images/men/men$index.jpg',
                          subCategLabel: men[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.05,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '<<',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          ),
                          Text(
                            'men'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          ),
                          const Text(
                            '>>',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class SubcategModel extends StatelessWidget {
  final String mainCategName;
  final String subcategName;
  final String assetName;
  final String subCategLabel;

  const SubcategModel({
    Key? key,
    required this.mainCategName,
    required this.subcategName,
    required this.assetName,
    required this.subCategLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategProducts(
                      maincategName: mainCategName,
                      subcategName: subcategName,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(subCategLabel)
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}
