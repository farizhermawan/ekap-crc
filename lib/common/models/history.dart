import 'package:flutter/material.dart';

class History {

  final int id;
  final String title;
  final String category;
  final DateTime createdAt;

  History(this.id, this.title, this.category, this.createdAt);

  History.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        category = json['category'],
        createdAt = DateTime.parse(json['created_at']);

  IconData getIconByCategory() {
    switch(this.category) {
      case 'A': return Icons.drive_eta;
      case 'B': return Icons.settings;
      default: return Icons.widgets;
    }
  }
}
