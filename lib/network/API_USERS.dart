import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> loginUsers(String email, String password) async {
  try {
    final response = await http.post(
      Uri.parse('https://my-json-server.typicode.com/IsaacAmp24/users_fakeApi/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    print('Status code: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      bool loggedIn = responseData['loggedIn'];
      return loggedIn;
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  } catch (e) {
    print('Error en la solicitud HTTP: $e');
    return false; // Devuelve false en caso de error
  }
}

Future<List<dynamic>> getUsersFromAPI() async {
  final response = await http.get(Uri.parse('https://my-json-server.typicode.com/IsaacAmp24/users_fakeApi/users'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Error al obtener usuarios de la API: ${response.reasonPhrase}');
  }
}
