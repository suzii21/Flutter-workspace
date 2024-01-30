import 'package:flutter/material.dart';
import 'AppStyle.dart';
import 'appcolour.dart';

Widget CustomTextField(
    {required TextEditingController controller,
      required String hintText,
      Widget? prefixIcon,
      int? maxLines = 1}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: TextFormField(
      controller: controller,
      cursorColor: primeColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: primeColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: primeColor)),
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.only(left: 10),
      ),
    ),
  );
}

Widget CustomSearchField(
    {required TextEditingController controller,
      required String hintText,
      Widget? prefixIcon,
      int? maxLines = 1,
      void Function(String)? onChanged}) {
  return TextFormField(
    controller: controller,
    cursorColor: Colors.purple.shade200,
    maxLines: maxLines,
    enableSuggestions: false,
    autocorrect: false,
    style: TextStyle(
      color: Colors.purple.shade200,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      decorationThickness: 0,
    ),
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle:
      CustomStyle.AppStyle(color: Colors.purple.shade200, fontWeight: FontWeight.bold),
      enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.purple.shade200, width: 2)),
      focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.purple.shade200, width: 2)),
      contentPadding: EdgeInsets.only(left: 10),
    ),
    onChanged: onChanged,
  );
}

Widget CustomRadioButton(
    {required String title,
      required String value,
      required String? groupValue,
      required void Function(String?)? onChanged}) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      Radio(
        value: value,
        activeColor: primeColor,
        groupValue: groupValue,
        onChanged: onChanged,
      )
    ],
  );
}

Widget CustomTitle({required String title}) {
  return Row(
    children: [
      SizedBox(
        width: 5,
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 2),
        child: Text(title,
            style: CustomStyle.AppStyle(color: greyColor, fontSize: 16)),
      ),
    ],
  );
}

Widget CustomDateTimeField(
    {required TextEditingController controller,
      required String title,
      Widget? prefixIcon,
      String? hintText,
      void Function()? onTap}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomTitle(title: title),
      Container(
          child: Center(
              child: TextField(
                controller: controller,
                readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: prefixIcon,
                    hintText: hintText,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: primeColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: primeColor)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                onTap: onTap,
              ))),
    ],
  );
}

    ScaffoldFeatureController<SnackBar, SnackBarClosedReason> CustomDialog(
    {required BuildContext context,
      required String title,
      Color backgroundColor = Colors.purple,
      IconData? icon}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        icon != null
            ? Icon(
          icon,
          size: 35,
          color: Colors.purple.shade200,
        )
            : SizedBox(),
        icon != null
            ? SizedBox(
          width: 10,
        )
            : SizedBox(),
        Text(
          title,
          style: CustomStyle.AppStyle(
              color: Colors.purple.shade200, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    backgroundColor: backgroundColor,
    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
  ));
}
