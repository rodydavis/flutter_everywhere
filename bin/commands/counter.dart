import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:flutter_everywhere/data/models/counter.dart';

class CounterCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  final name = "counter";
  final description = "Increment and Decrement Counter";

  /// dart bin/main.dart counter --add 1
  CounterCommand() {
    // [argParser] is automatically created by the parent class.
    // argParser.addFlag('all', abbr: 'a');
    argParser..addOption('add', abbr: 'a');
    argParser..addOption('remove', abbr: 'r');
    argParser..addOption('reset', abbr: 'c');
  }

  // [run] may also return a Future.
  void run() {
    // [argResults] is set before [run()] is called and contains the options
    // passed to this command.
    final _counter = CounterModel();
    stderr.writeln('Counter Value.. ${_counter.value}');
    final _add = argResults['add'];
    if (_add != null) {
      stderr.writeln('Adding..$_add');
      _counter.set(int.tryParse(_add));
    }
    final _remove = argResults['remove'];
    if (_remove != null) {
      stderr.writeln('Removing..$_remove');
      _counter.set(int.tryParse(_remove));
    }
    final _reset = argResults['reset'];
    if (_reset != null) {
      stderr.writeln('Resetting..$_reset');
      _counter.reset();
    }
    stderr.writeln('Counter Value.. ${_counter.value}');
  }
}
