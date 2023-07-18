import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/note_model.dart';
import 'Colors_ListView.dart';

class EditNote_ColorList extends StatefulWidget {
  const EditNote_ColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNote_ColorList> createState() => _EditNote_ColorListState();
}

class _EditNote_ColorListState extends State<EditNote_ColorList> {
  late int currentindex;
  @override
  void initState() {
    currentindex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = colors[index].value;
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