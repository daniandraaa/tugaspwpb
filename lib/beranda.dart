import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

int _current = 0;
final CarouselController _controller = CarouselController();

class _BerandaState extends State<Beranda> {
  final List<String> imgList = ['images/Ellipse 6.png', 'images/avatar.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(23),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const SizedBox(
                          width: 85,
                          height: 75,
                          child: Image(
                              image: AssetImage("images/Ellipse 6.png")))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Green Garden",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Go Green",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sidoarjo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    child: CarouselSlider(
                      items: imgList
                          .map((item) => Container(
                                margin: const EdgeInsets.all(5.0),
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Image.asset(item),
                                        Positioned(
                                          bottom: 0.0,
                                          left: 0.0,
                                          right: 0.0,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(200, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0)
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 20.0),
                                            child: Text(
                                              'No. ${imgList.indexOf(item)} image',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ))
                          .toList(),
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          onPageChanged: (index, carouselReason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 33,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.yellow,
                    primary: const Color.fromARGB(255, 46, 117, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beranda()),
                  );
                },
                child: SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        'Masuk',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.white),
                      ),
                    )),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.green, width: 3),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beranda()),
                  );
                },
                child: SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        'Daftar',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.black),
                      ),
                    )),
              ),
            ])),
      ),
    );
  }
}
