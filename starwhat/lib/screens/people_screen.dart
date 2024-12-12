import 'package:flutter/material.dart';
import 'package:starwhat/models/people_response/people_response.dart';
import 'package:http/http.dart' as http;

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  late Future<PeopleResponse> peopleResponse;

  @override
  void initState() {
    super.initState();
    peopleResponse = getPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(const Color.fromARGB(255, 240, 240, 240).value),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.network(
                'https://img.icons8.com/color/512/star-wars.png',
                height: 60,
              ),
            ),
            const SizedBox(width: 10),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text('People'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: FutureBuilder<PeopleResponse>(
        future: peopleResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildPeopleList(snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  Future<PeopleResponse> getPeople() async {
    final response = await http.get(Uri.parse('https://swapi.dev/api/people'));

    if (response.statusCode == 200) {
      return PeopleResponse.fromJson(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  Widget _buildPeopleList(PeopleResponse peopleResponse) {
return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.70,

    ),
   itemCount: peopleResponse.results!.length,
   itemBuilder: (context, index) {
     return Card(
       margin: const EdgeInsets.all(10),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
       ),
       color: const Color.fromARGB(255, 214, 214, 214),
       child: Stack(
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(10),
             child: Image(
               image: NetworkImage('https://starwars-visualguide.com/assets/img/characters/${index + 1}.jpg'),
               width: 500,
               height: 350,
              fit: BoxFit.cover,
             ),
           ),
           Positioned(
             bottom: 0,
             left: 0,
             right: 0,
             child: Container(
               padding: const EdgeInsets.all(5),
               decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                 borderRadius: const BorderRadius.only(
                   bottomLeft: Radius.circular(10),
                   bottomRight: Radius.circular(10),
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Nombre: ${peopleResponse.results![index].name}",
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                   ),
                   Text(
                     "Altura: ${peopleResponse.results![index].height}",
                     style: const TextStyle(color: Colors.white),
                   ),
                   Text(
                     "Genero: ${peopleResponse.results![index].gender}",
                     style: const TextStyle(color: Colors.white),
                   ),
                   Text(
                     "Peso: ${peopleResponse.results![index].mass} Kg",
                     style: const TextStyle(color: Colors.white),
                   ),
                 ],
               ),
             ),
           ),
         ],
       ),
     );
   },
);
  }
}