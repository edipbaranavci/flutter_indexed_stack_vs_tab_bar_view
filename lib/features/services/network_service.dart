import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/post_model.dart';

class NetworkService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/';

  Future<List<PostModel>?> fetPostList() async {
    final res = await http.get(Uri.parse('${baseUrl}posts'));
    if (res.statusCode == HttpStatus.ok) {
      List jsonResponse = json.decode(res.body);
      return jsonResponse.map((e) => PostModel.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
