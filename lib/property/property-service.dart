import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class PropertyService {
  var _baseUrl = "http://appstore.successfarm.com.ng/api";
  Future<String> uploadFile(File file) async {
    var request = http.MultipartRequest("POST", Uri.parse('$_baseUrl/files'));
    var pic = await http.MultipartFile.fromPath("file", file.path);
    request.files.add(pic);
    var response = await request.send();
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    var data = jsonDecode(responseString);
    return data['url'];
  }
  
}
