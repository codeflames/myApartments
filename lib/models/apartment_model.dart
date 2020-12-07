import 'package:flutter/material.dart';

class Apartment {
  final int id;
  final String name;
  final double price;
  final String apartmentType;
  final List<String> facilities;
  final String description;
  final String image;

  Apartment({
    this.id,
    this.name,
    this.price,
    this.apartmentType,
    this.facilities,
    this.description,
    this.image,
  });
}
