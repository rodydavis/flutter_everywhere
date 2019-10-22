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
    argParser..addOption('add', abbr: 'a', defaultsTo: '0');
    argParser..addOption('remove', abbr: 'r', defaultsTo: '0');
  }

  // [run] may also return a Future.
  void run() {
    // [argResults] is set before [run()] is called and contains the options
    // passed to this command.
    final _counter = CounterModel();
    stderr.writeln('Counter Value.. ${_counter.value}');
    final _add = argResults['add'];
    stderr.writeln('Adding..$_add');
    _counter.add(int.tryParse(_add));
    final _remove = argResults['remove'];
    stderr.writeln('Removing..$_remove');
    _counter.remove(int.tryParse(_remove));
    stderr.writeln('Counter Value.. ${_counter.value}');
  }
}
