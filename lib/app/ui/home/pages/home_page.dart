import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travely/app/common/color_values.dart';
import 'package:travely/app/common/shared_code.dart';
import 'package:travely/app/routes/router.gr.dart';
import 'package:travely/app/widgets/custom_text_field.dart';

import '../../../data/models/place_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  List<PlaceModel> _list = [
    PlaceModel(
        id: '',
        description: 'Garuda Wisnu Kencana adalah sebuah tempat monumental yang dikembangkan sebagai taman budaya yang menampung berbagai kegiatan seni dan budaya lokal, berada pada sebuah bukit tandus dengan luas 240 hektar. Tempat wisata yang berada di wilayah Bali Selatan ini menjadi destinasi tour wajib bagi mereka yang liburan ke pulau Dewata Bali.',
        name: 'Garuda Wisnu Kencana',
        imageUrl: 'assets/image.png',
        rating: 4.6,
        location: 'Kuta Selatan, Kab. Badung')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(SharedCode.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, i) => _buildCard(_list[i]),
                separatorBuilder: (_, __) => SizedBox(height: 2.h),
                itemCount: _list.length),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(PlaceModel place) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          AutoRouter.of(context).navigate(DetailRoute(place: place));
        },
        child: Padding(
          padding: const EdgeInsets.all(SharedCode.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    place.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 2.h),
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
                  )
                ],
              ),
              SizedBox(height: 0.5.h),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: ColorValues.navy,
                  ),
                  SizedBox(width: 2.w),
                  Expanded(child: Text(place.location)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
