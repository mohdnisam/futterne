
import 'package:flutter/cupertino.dart';

void main(){

}
class Gridviewcustm extends StatelessWidget {
  var images = [
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
    "images/ww.png",
  ];
  var name = [
    "shaf",
    "kaju",
    "nish",
    "mani",
    "megna",
    "jasna",
    "anu",
    "aysha",
    "aleena",
    "barjees",
    "fadhi",
    "nasih",
  ];
  var rate = ["2", "3", "4", "5", "6", "4", "3", "8", "5", "3", "4", "5",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20, crossAxisSpacing: 20),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),),
                trailing: Icon(Icons.shopping_cart),
                title: Text(name[index]),
                subtitle: Text(rate[index]),
              ),
            );
          }, childCount: images.length,
          )),
    );
  }

}