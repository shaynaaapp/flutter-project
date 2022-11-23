import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watch_list.dart';
// import 'package:flutter/material.dart';
// import 'package:counter_7/main.dart';
// import 'package:counter_7/page/form.dart';
// import 'package:counter_7/page/budget.dart';

// get watch list
Future<List<MyWatchList>> fetchWatchlist() async {
        var url = Uri.parse('https://shaynaskatalog.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // response jadi JSON
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // json jadi object
        List<MyWatchList> listWatchlist = [];
        for (var d in data) {
        if (d != null) {
            listWatchlist.add(MyWatchList.fromJson(d));
        }}
        
        return listWatchlist;
    }