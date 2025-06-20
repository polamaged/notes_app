
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

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

class _ColorListViewState extends State<ColorListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: Kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6,),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                BlocProvider.of<AddNoteCubit>(context).color = Kcolors[index];
                setState(() { });
              },
              child: ColorItem(
                color: Kcolors[index],
                isActive: currentindex == index,
              ),
            ),
          ); 
        },
      
      ),
    );
  }
}