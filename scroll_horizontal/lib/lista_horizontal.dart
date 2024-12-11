import 'package:flutter/material.dart';

class ListaHorizontal extends StatelessWidget {
  const ListaHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ListView(
        key: GlobalKey(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8.0),
        
        
        children:[
          
          const SizedBox(
            height: 50,

          ),
            Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                    'https://media.themoviedb.org/t/p/w235_and_h235_face/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg',
                    width: 250.0,
                    height: 600.0,
                    fit: BoxFit
                    .cover,
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              const Text('Edward', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700), ),
              const Text('Thomas', style: TextStyle(fontSize: 20, color: Colors.grey)),
            ],
          ),
          Column(
            children: [
              Container(
                
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                    'https://media.themoviedb.org/t/p/w235_and_h235_face/wo2hJpn04vbtmh0B9utCFdsQhxM.jpg',
                    width: 250.0,
                    height: 600.0,
                    fit: BoxFit
                    .cover,
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              const Text('Leonardo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700), ),
              const Text('Dicaprio', style: TextStyle(fontSize: 20, color: Colors.grey)),
            ],
          ),
           Column(
            children: [
              Container(
                
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    'https://media.themoviedb.org/t/p/w235_and_h235_face/4D0PpNI0kmP58hgrwGC3wCjxhnm.jpg',
                    width: 250.0,
                    height: 600.0,
                    fit: BoxFit
                    .cover,
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              const Text('Keanu', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700), ),
              const Text('Reeves', style: TextStyle(fontSize: 20, color: Colors.grey)),
            ],
          ),
           Column(
            children: [
              Container(
                
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                    'https://media.themoviedb.org/t/p/w235_and_h235_face/9VYK7oxcqhjd5LAH6ZFJ3XzOlID.jpg',
                    width: 250.0,
                    height: 600.0,
                    fit: BoxFit
                    .cover,
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              const Text('Pedro', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700), ),
              const Text('Pascal', style: TextStyle(fontSize: 20, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}