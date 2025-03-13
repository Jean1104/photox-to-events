
import 'package:flutter/material.dart';
import '../pallete.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperSlider extends StatelessWidget {
    const SwiperSlider({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        const List<String> images = [
            'assets/images/Maternidad-1.jpg',
            'assets/images/Maternidad-2.jpg',
            'assets/images/Maternidad-3.jpg'
        ];
        
        return SizedBox(
            width: double.infinity,
            height: 380.0,
            child: Swiper(
                viewportFraction: 0.8,
                scale: 0.85,
                itemBuilder: (BuildContext context,int index){
                    return Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                    );
                },
                itemCount: images.length,
                pagination: const SwiperPagination(),
                control: const  SwiperControl(),
            )
        );
    }
}