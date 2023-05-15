import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_platform/model/ott_model.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List imagelist = [
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2023/02/the-night-manager-01.jpg',
    'https://www.scrolldroll.com/wp-content/uploads/2022/11/cirkus-Bollywood-movies-in-December.jpg',
    'https://assets.gadgets360cdn.com/pricee/assets/product/202212/maarrich_1671536791.jpg',
    'https://images.jdmagicbox.com/movies/centralized_154004342023_03_02_05_35_27_220.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/06/Jawan-01.jpg',
  ];
  List<Ottmodel> ottlist = [
    Ottmodel(
        name: "Netflix",
        link: "https://www.netflix.com/in/",
        img:
            "https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI"),
    Ottmodel(
        name: "amezon prime",
        link: "https://www.primevideo.com/in/",
        img:
            "https://play-lh.googleusercontent.com/Uyk7DkQElC-0OfJCOHZLIgnQ0ulHoEC06d9ENRklNh-0t6nrFc6mqmpRMajoVU3Yt9w"),
    Ottmodel(
        name: "you tube",
        link: "https://www.youtube.com/",
        img:
            "https://play-lh.googleusercontent.com/lMoItBgdPPVDJsNOVtP26EKHePkwBg-PkuY9NOrc-fumRtTFP4XhpUNk_22syN4Datc"),
    Ottmodel(
        name: "hotstar",
        link: "https://www.hotstar.com/in",
        img:
            "https://secure-media.hotstar.com/web-assets/prod/images/Disney+Hotstar.jpg"),
    Ottmodel(
        name: "voot",
        link: "https://www.voot.com/",
        img:
            "https://yt3.googleusercontent.com/ytc/AGIKgqM4wsUafoqWv30u0kLhPTIegKfobXlRdlzLpH3LDA=s900-c-k-c0x00ffffff-no-rj"),
    Ottmodel(
        name: "jio cinema",
        link: "https://www.jiocinema.com/",
        img:
            "https://play-lh.googleusercontent.com/xn0i77gUK5YfpBZlyuozEL8rThZc6FkX0ozZjVyogstEg7xUtrUdIDPuiwZWsQ9MjA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title: Text(
          "Entertainment app",
          style: GoogleFonts.pangolin(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            CarouselSlider(
              items: imagelist
                  .map((e) => Image.network("$e",
                      height: 20.h, width: 80.w, fit: BoxFit.fill))
                  .toList(),
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                height: 30.h,
                initialPage: 0,
                autoPlay: true,
                aspectRatio: 30,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                pageSnapping: false,
                autoPlayAnimationDuration: Duration(seconds: 2),
              ),
            ),
            SizedBox(height: 10),
            Divider(height: 1, color: Colors.red.shade300, thickness: 2),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'web',arguments: ottlist[index]);
                      },
                      child: Container(
                        height: 5.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage("${ottlist[index].img}"),
                                fit: BoxFit.fill)),
                      ),
                    );
                  },
                  itemCount: ottlist.length),
            ),
          ],
        ),
      ),
    );
  }
}
