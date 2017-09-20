// Copyright (c) 2017, ibrahimfamily. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'card.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'card',
  styleUrls: const ['card_component.css'],
  templateUrl: 'card_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
)
class CardComponent {
  final Card card = new Card(
      'What do the letters of the popular fast food chain KFC stand for?',
      const [
        'Kentucky Fried Chicken',
        'Kitchen Fresh Chicken',
        'Finger Lickin\' Good',
        'Keep Fingers Crossed'
      ],
      0);

  int answerIndex;

  bool get isCorrect =>
      answerIndex == null ? null : answerIndex == card.answer;
}
