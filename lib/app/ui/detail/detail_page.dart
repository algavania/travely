import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travely/app/common/shared_code.dart';
import 'package:travely/app/data/models/place_model.dart';

import '../../common/color_values.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.place}) : super(key: key);
  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Wisata'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(place.imageUrl, height: 30.h, width: double.infinity, fit: BoxFit.cover,),
            Column(
              children: [
                SizedBox(height: 28.h),
                Container(
                  padding: const EdgeInsets.all(SharedCode.defaultPadding),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                place.name,
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold, fontSize: 16.sp),
                              )),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.orangeAccent),
                              SizedBox(width: 0.2.h),
                              Text(
                                '${place.rating}',
                                style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: ColorValues.navy,
                          ),
                          SizedBox(width: 2.w),
                          Expanded(child: Text(place.location)),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(place.description)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
