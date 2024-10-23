import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/search.dart';
import 'package:task/presentation/widgets/textin.dart';

class RequestUI extends StatefulWidget {
  const RequestUI({super.key});

  @override
  State<RequestUI> createState() => _RequestUIState();
}

class _RequestUIState extends State<RequestUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset(
                "assets/images/AdobeStock_49083631_Preview.jpeg",
                opacity: const AlwaysStoppedAnimation(0.2),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: MediaQuery.sizeOf(context).width * 0.07,
              top: MediaQuery.sizeOf(context).height * 0.06,
              child: searchBar(context, true),
            ),
            Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.14,
              child: _hello(),
            ),
            Positioned(
              left: MediaQuery.sizeOf(context).width * 0.08,
              top: MediaQuery.sizeOf(context).height * 0.23,
              child: _formReg(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hello() {
    return Container(
      child: Row(
        children: [
          const Text(
            "Hello Kareem!",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "fieldwork"),
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

  Widget _formReg() {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.83,
      height: MediaQuery.sizeOf(context).height * 0.75,
      decoration: const BoxDecoration(
        color: Color(0xfff4c01e),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                padding: const EdgeInsets.only(top: 25, bottom: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Special Request?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "No Problem!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              const Icon(
                Icons.close,
                size: 30,
              )
            ],
          ),
          textIn("Name", false),
          const SizedBox(
            height: 5,
          ),
          textIn("Email", false),
          const SizedBox(
            height: 5,
          ),
          textIn("Phone Number", false),
          const SizedBox(
            height: 5,
          ),
          textIn("Category", true),
          const SizedBox(
            height: 5,
          ),
          textIn("Location", true),
          const SizedBox(
            height: 35,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Notes",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            height: MediaQuery.sizeOf(context).height * 0.1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.45,
            height: MediaQuery.sizeOf(context).height * 0.055,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            child: const Center(
              child: Text(
                "Send",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
