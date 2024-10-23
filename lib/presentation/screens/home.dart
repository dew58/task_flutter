import 'package:flutter/material.dart';
import 'package:task/constant.dart';
import 'package:task/presentation/widgets/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4c01e),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
          Positioned(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.25,
              width: MediaQuery.sizeOf(context).width,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(65)),
                child: Image.asset(
                  "assets/images/background.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width * 0.07,
            top: MediaQuery.sizeOf(context).height * 0.06,
            child: searchBar(context, false),
          ),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.14,
              child: _hello()),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.30,
              child: _cardUI(0, "1300\nEGP")),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.53,
              child: _cardUI(1, "1500\nEGP")),
          Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.77,
              child: _cardUI(2, "3000\nEGP")),
          Positioned(
            left: MediaQuery.sizeOf(context).width * 0.1,
            top: MediaQuery.sizeOf(context).height * 0.22,
            child: Image.asset("assets/images/bubble.png"),
          ),
        ],
      ),
    );
  }

  Widget _hello() {
    return Container(
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "fieldwork"),
                  ),
                  Text(
                    "Kareem",
                    style: TextStyle(
                        color: Color(0xfff4c01e),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "fieldwork"),
                  ),
                  Text(
                    " !",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "fieldwork"),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    color: Colors.white,
                  ),
                  Text(
                    "Fifth Settlement",
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.3,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/OIP.jpg"),
            radius: 27,
          ),
        ],
      ),
    );
  }

  Widget _cardUI(int index, String cost) {
    return Stack(children: [
      Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.5,
        ),
      ),
      Positioned(
        top: 15,
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.85,
          height: MediaQuery.sizeOf(context).height * 0.16,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
      Positioned(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    firstHead[index],
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 23,
                        color: const Color.fromARGB(255, 6, 122, 122),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fieldwork'),
                  ),
                  Text(
                    secondHead[index],
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: const Color.fromARGB(255, 6, 122, 122),
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(top: 1, right: 20, child: Image.asset(images[index])),
      Positioned(
          right: MediaQuery.sizeOf(context).width * 0.4,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: const Color.fromARGB(255, 244, 130, 54),
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: Center(
                child: Text(
                  cost,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 6, 122, 122),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ))
    ]);
  }
}
