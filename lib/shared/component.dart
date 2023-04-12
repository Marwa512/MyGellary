import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextForm({
  var controller,
  required String label,
  TextInputType? type,
  double? height,
}) {
  return Container(
    height: height,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(30)),
    child: TextFormField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: label,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}

Widget defaultButton(
    {double? width, Color? backgroundcolor, Color? textcolor, String? text}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(
          15,
        )),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text ?? "",
        style: TextStyle(
          color: textcolor,
        ),
      ),
    ),
  );
}

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
Widget galleryImage() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  // offset: Offset(0.0, 0.75,
                  // )
                )
              ],
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                15,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.ZcuQIBc1S2Cd6ZTkFv_gTAHaFj?pid=ImgDet&rs=1"))),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  // offset: Offset(0.0, 0.75,
                  // )
                )
              ],
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                15,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.ZcuQIBc1S2Cd6ZTkFv_gTAHaFj?pid=ImgDet&rs=1"))),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  // offset: Offset(0.0, 0.75,
                  // )
                )
              ],
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                15,
              ),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.ZcuQIBc1S2Cd6ZTkFv_gTAHaFj?pid=ImgDet&rs=1"))),
        ),
      ],
    );
