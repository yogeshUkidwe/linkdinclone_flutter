import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


class MainPageTransaction with ChangeNotifier {
  GenerativeModel model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: "AIzaSyAYxDd-lVyUmhSJyCoeRL5lJeEuHrk-nFU",
  );
  bool sortByDate = false;
  String productDetail = "";
  bool sortRating = false;
  bool sortByCategory = false;
  void toggleSortByDate() {
    sortByDate = !sortByDate;
    notifyListeners();
  }

  void toggleSortByRating() {
    sortRating = !sortRating;
    notifyListeners();
  }
  void refresh(int index) {
    sortRating = !sortRating;
    notifyListeners();
  }
  void changeSubMenu() {
    sortRating = !sortRating;
    notifyListeners();
  }
  void toggleSortByCategory() {
    sortByCategory = !sortByCategory;
    notifyListeners();
  }




void notifyAll(){
    notifyListeners();
}
  Future<String> getResult(String searchText, String context) async {

    String result = "";

    try {
      final content = [Content.text(context)];
      final response = await model.generateContent(content);
      productDetail = response.text!;
      notifyListeners();

    } catch (e) {
      // Handle any exceptions that may occur during the request.
      print("Error: $e");
    }

    return result;
  }
  Future<String> getResult1(String searchText, String context) async {
    String API_KEY = "AIzaSyAYxDd-lVyUmhSJyCoeRL5lJeEuHrk-nFU";
    String result = "";
    final String apiUrl =
        'https://generativelanguage.googleapis.com/v1beta3/models/chat-bison-001:generateMessage?key=${API_KEY}';
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    final Map<String, dynamic> data = {
      "prompt": {
        "context": context,
        "examples": [],
        "messages": [
          {"content": searchText}
        ],
      },
      "temperature": 0.25,
      "top_k": 40,
      "top_p": 0.95,
      "candidate_count": 1,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        // Successful response, you can handle the response data here.
        print("Response: ${response.body}");

        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final List<dynamic> responseMessages = responseData['candidates'];
        if (responseMessages.isNotEmpty) {
          result = responseMessages.first['content'];
          print("Response Content: $result");
          // You can display the content in your app as needed.
        } else {
          print("No message content found in response.");
        }
        productDetail = result;
        notifyListeners();
      } else {
        // Handle error or non-200 status code here.
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      // Handle any exceptions that may occur during the request.
      print("Error: $e");
    }

    return result;
  }
}
