import 'package:flutter/material.dart';

Widget searchBar(BuildContext context, bool isBlack) {
  return Row(
    children: [
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05,
        width: MediaQuery.sizeOf(context).height * 0.05,
        child: Image.asset(
          "assets/icons/menu.png",
          color: isBlack ? Colors.black : Colors.white,
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
        height: MediaQuery.sizeOf(context).height * 0.045,
        width: MediaQuery.sizeOf(context).width * 0.7,
        decoration: BoxDecoration(
          color: isBlack ? Colors.black : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.1,
                width: MediaQuery.sizeOf(context).width * 0.6,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      border: InputBorder.none,
                      hintText: "Search here ...",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.search,
                color: isBlack ? Colors.white : Colors.black,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
