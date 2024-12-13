import 'package:flutter/material.dart';
import 'package:starwhat/models/people_response/people.dart';

class PeopleDetailScreen extends StatefulWidget {
  final People peopleItem;
  const PeopleDetailScreen({super.key, required this.peopleItem});

  @override
  State<PeopleDetailScreen> createState() => _PeopleDetailScreenState();
}

class _PeopleDetailScreenState extends State<PeopleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final index = int.parse(widget.peopleItem.url!.split('/')[5]);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.peopleItem.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Image(
                 image: NetworkImage('https://starwars-visualguide.com/assets/img/characters/$index.jpg'),
                 width: 500,
                 height: 350,
                fit: BoxFit.cover,
               ),
             ),
            Text(
              "Nombre: ${widget.peopleItem.name}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Altura: ${widget.peopleItem.height}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Genero: ${widget.peopleItem.gender}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "Peso: ${widget.peopleItem.mass} Kg",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}