import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: p_color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
        ),
      ),
    );
  }
}
