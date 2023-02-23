import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Task extends Equatable {
  final String title;
  final String icon;
  final String color;
  final List<dynamic>? todos;

  Task(
      {required this.title,
      required this.icon,
      required this.color,
      this.todos});

  Task copyFrom(
          String? title, String? icon, String? color, List<dynamic>? todos) =>
      Task(
          title: title ?? this.title,
          icon: icon ?? this.icon,
          color: color ?? this.color,
          todos: todos ?? this.todos);

  factory Task.fromJson(Map<String, dynamic> json) => Task(
      title: json['title'],
      icon: json['icon'],
      color: json['color'],
      todos: json['todos']);

  Map<String, dynamic> toJson(Task tasks) => {
        'title': tasks.title,
        'icon': tasks.icon,
        'color': tasks.color,
        'todos': tasks.todos
      };

  @override
  List<Object?> get props => [title, icon, color];
}
