import 'package:flutter/material.dart';

class Documentary extends ChangeNotifier {
  int id;
  String image;
  String title;
  String subtitle;
  String letterText;
  int numbLike;
  int numbLove;
  int numbSurprise;
  int numbAngry;
  int numbCry;
  bool isLike;
  bool isLove;
  bool isSurprise;
  bool isAngry;
  bool isCry;
  bool patriota;
  bool premium;

  Documentary({
    this.id,
    this.image,
    this.title,
    this.subtitle,
    this.letterText,
    this.numbAngry,
    this.numbCry,
    this.numbLike,
    this.numbLove,
    this.numbSurprise,
    this.isAngry,
    this.isCry,
    this.isLike,
    this.isLove,
    this.isSurprise,
    this.patriota,
    this.premium,
  });
  Documentary.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        image = json['image'],
        title = json['title'],
        subtitle = json['subtitle'],
        letterText = json['letterText'],
        numbAngry = json['numAngry'],
        numbCry = json['numbCry'],
        numbLike = json['numbLike'],
        numbLove = json['numbLove'],
        numbSurprise = json['numbSurprise'],
        isAngry = json['isAngry'],
        isCry = json['isCry'],
        isLike = json['isLike'],
        isLove = json['isLove'],
        isSurprise = json['isSurprise'],
        patriota = json['patriota'],
        premium = json['premium'];
  Map toJson() {
    return {
      "id": this.id,
      "image": this.image,
      "title": this.title,
      "subtitle": this.subtitle,
      "letterText": this.letterText,
      "numbLike": this.numbLike,
      "numbLove": this.numbLove,
      "numbSurprise": this.numbSurprise,
      "numbAngry": this.numbAngry,
      "numbCry": this.numbCry,
      "isLike": this.isLike,
      "isLove": this.isLove,
      "isSurprise": this.isSurprise,
      "isAngry": this.isAngry,
      "isCry": this.isCry,
      "patriota": this.patriota,
      "premium": this.premium
    };
  }

  like(bool val) {
    this.isLike = val;
    notifyListeners();
  }

  adLike(int val) {
    this.numbLike += val;
  }

  love() {
    this.isLove = !this.isLove;
    if (isLove) {
      numbLove++;
      notifyListeners();
    }
  }

  surprise() {
    this.isSurprise = !this.isSurprise;
    if (isSurprise) {
      numbSurprise++;
    }
    notifyListeners();
  }

  angry() {
    this.isAngry = !this.isAngry;
    if (isAngry) {
      numbAngry++;
    }
    notifyListeners();
  }

  cry() {
    this.isCry = !this.isCry;
    if (isCry) {
      numbCry++;
    }
    notifyListeners();
  }

  clearCounters() {
    numbAngry = 0;
    numbCry = 0;
    numbLike = 0;
    numbLove = 0;
    numbSurprise = 0;
    notifyListeners();
  }
}
