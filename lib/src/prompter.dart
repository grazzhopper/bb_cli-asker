// this class is responsible to output the prompt questions, options to select and
// register the input to determine the selection chosen by the user.
// TODO add input validation

import 'terminal.dart';
import 'option.dart';

// terminal can't be reassigned and reuses the 'const' terminal declaration
final Terminal _terminal = const Terminal();

class Prompter {
  askMultiple(String prompt, List<Option> options) {
    // clear terminal screen.
    _terminal.clearScreen();
    // print the prompt in the terminal for user to read.
    _terminal.printPrompt(prompt);
    // print the options in the terminal for selection by the user.
    _terminal.printOptions(options);
    // collect the choice from the terminal entered by the user.
    _terminal.collectInput();
  }
  // TODO add askBinary method and refactor
}
