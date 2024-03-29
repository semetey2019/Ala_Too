import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final List<String> urls;

  const SliderWidget({super.key, required this.urls});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List<String> images = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    images = widget.urls;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          height: 257,
          child: PageView.builder(
            itemCount: images.length,
            controller: PageController(
              initialPage: 0,
              viewportFraction: 1,
            ),
            physics: const BouncingScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              height: 257,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                    images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 17,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      for (int i = 0; i < images.length; i++)
                        Container(
                          width: 7,
                          height: 7,
                          margin: i + 1 < images.length
                              ? const EdgeInsets.only(right: 5)
                              : null,
                          decoration: BoxDecoration(
                            color:
                                currentIndex == i ? Colors.black : Colors.grey,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
