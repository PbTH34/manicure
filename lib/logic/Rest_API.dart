import 'dart:convert';
import 'package:http/http.dart' as http;


class RandomMastersFirstEnterance extends RandomMastersUpdate{
  List<dynamic> data =[];//сделать чтобы данные брались из firebase
  @override
  void fetchUsers()async{
    print("Я работаю");
    const String url = 'https://randomuser.me/api/?results=20';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    data = json['results'];
    print("Я отработала");
  }
}

class RandomMastersUpdate{
  List<dynamic> data =[];//сделать чтобы данные брались из firebase
  void fetchUsers() async{
    print("Я работаю");
    const String url = 'https://randomuser.me/api/?results=1';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    data = json['results'];
    print("Я отработала");
    //понять как к нему обращаться


  }
}