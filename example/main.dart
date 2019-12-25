// TODO make this a proper example file.
// TODO add a proper library file as single entry point for API.

import 'package:byteblenders_prompter/src/option.dart';
import 'package:byteblenders_prompter/src/prompter.dart';

void main() {
  // declare a list of options for the questions you want to ask.
  final List<Option> options = [
    Option('I want red', '#f00'),
    Option('I want blue', '#00f'),
    Option('I want green', '#0f0'),
  ];

  // declare a new prompter witin the terminal screen.
  final Prompter prompter = new Prompter();

  // ask a question with the multiple options for a user to respond to.
  prompter.askMultiple('What is your favorite color?', options);
}
