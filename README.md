A simple example of calling a V function from Dart using FFI.

compile the V code using:
```
v -shared -prod fibrec.v
```
note calling from Dart doesn't work without compiling using `-prod`.

call dsrt from top level dir:
```
dart bin/vtest.dart
```
