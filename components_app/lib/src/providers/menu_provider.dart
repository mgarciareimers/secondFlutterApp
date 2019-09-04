import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    // this.loadData();
  }

  // Method that loads data.
  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    
    Map dataMap = json.decode(response);
    this.options = dataMap['rutas'];

    return this.options;
  }
}

final menuProvider = new _MenuProvider();