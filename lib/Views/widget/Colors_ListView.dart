import 'package:flutter/material.dart';

import '../../Cubit/Add_Note_Cubit/Cubit.dart';
import '../../constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.IsActive = false, required this.color});
  final bool IsActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IsActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentindex = 0;
  List<Color> colors = [
    const Color(0xffD8DCFF),
    const Color(0xffAEADF0),
    const Color(0xffC38D94),
    const Color(0xffA76571),
    const Color(0xff565676),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
              onTap: () {
                currentindex = index;
                AddNoteAppCubit.get(context).color=colors[index];
                setState(() {});
              },
              child: ColorItem(
                IsActive: currentindex == index,
                color: colors[index],
              )),
        ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
