import 'dart:io';
import 'package:args/command_runner.dart';

import 'cli/index.dart';

main(List<String> arguments) {
  // 0 = Success
  // 1 = Warnings
  // 2 = Errors
  exitCode = 0;
  var runner = CommandRunner("runner", "Flutter Command Line Project")
    ..addCommand(CounterCommand());
  runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64); // Exit code 64 indicates a usage error.
  });
}
