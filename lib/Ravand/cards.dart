import 'package:flutter/material.dart';

Widget bigCard() {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //for image
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //for logo
          const SizedBox(height: 5),
          const Icon(Icons.email),
          const SizedBox(height: 5),
          //for text
          const Text(
            'some random news stuff here so that it can fill the thing',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          //for below row
          Row(
            children: [
              const Text(
                '31m',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.newspaper, size: 20),
                splashRadius: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded, size: 20),
                splashRadius: 15,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(
            height: 15,
            thickness: 1,
          ),
        ],
      ),
    ),
  );
}

Widget smallStartCard() {
  return SizedBox(
    width: double.infinity,
    child: InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for logo
            const SizedBox(height: 5),
            const Icon(Icons.email),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'some random news stuff',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    width: 80,
                    height: 80,
                    image: AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  '2h',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.newspaper, size: 20),
                  splashRadius: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded, size: 20),
                  splashRadius: 15,
                  color: Colors.grey,
                ),
              ],
            ),
            const Divider(
              height: 15,
              thickness: 1,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget smallEndCard() {
  return SizedBox(
    width: double.infinity,
    child: InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for logo
            const SizedBox(height: 5),
            const Icon(Icons.email),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'some random news stuff',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    width: 80,
                    height: 80,
                    image: AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  '2h',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.newspaper, size: 20),
                  splashRadius: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded, size: 20),
                  splashRadius: 15,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
