// This class is responsible for printing output to the terminal
// and receiving input from the user.

import 'dart:io';
import 'option.dart';

class Terminal {
  // let there be only one terminal for this application.
  const Terminal();

  // write the prompt onto the screen.
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  // write the options onto the screen with an indexnumber to reference.
  void printOptions(List<Option> options) {
    options.asMap().forEach((int index, Option option) {
      stdout.writeln('[$index] - ${option.label}');
    });
    stdout.writeln('\nEnter your choice:');
    stdout.write('> ');
  }

  // clear the terminal screen with regard to operating system.
  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }

  // get the input entered into the terminal by user.
  String collectInput() {
    return stdin.readLineSync();
  }
}
