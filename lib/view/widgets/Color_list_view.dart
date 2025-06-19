
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

final bool isActive ;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child:  CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 25,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}
int currentindex = 0;

List<Color> colors= const [
Color(0xFFC6878F),
Color(0xFFB79D94),
Color(0xFF969696),
Color(0xFF67697C),
Color(0xFF253D5B),
Color(0xFF8783D1),
Color(0xFFAA9ABA),
Color(0xFFB6C9BB),
Color(0xFF040F0F),
Color(0xFF57737A),
Color(0xFF85BDBF),
];
class _ColorListViewState extends State<ColorListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6,),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() { });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentindex == index,
              ),
            ),
          ); 
        },
      
      ),
    );
  }
}