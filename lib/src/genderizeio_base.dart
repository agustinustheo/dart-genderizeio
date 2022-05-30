import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Genderize {
  Genderize({
    required this.name,
    required this.gender,
    required this.probability,
    required this.count,
  });
  final String name;
  final String gender;
  final double probability;
  final int count;

  factory Genderize.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final gender = data['gender'] as String;
    final probability = data['probability'] as double;
    final count = data['count'] as int;

    return Genderize(
      name: name,
      gender: gender,
      probability: probability,
      count: count,
    );
  }
}

class GenderizeAPI {
  Future<Genderize> send(String name) async {
    final response = await http
        .get(Uri.parse("https://api.genderize.io?name=${name}"));

    if (response.statusCode == 200) {
      return Genderize.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
